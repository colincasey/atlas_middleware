#! /usr/bin/ruby

$:.unshift File.join(File.dirname(__FILE__))

require 'rubygems'
require 'prawn'
require 'prawn/format'
require 'prawn/layout'
#require 'prawn/fast_png'
require 'open-uri'
require 'esri/soap/map_server/map_server'
require 'RMagick'
require 'perftools'
require 'base64'

module Prawn
  module Images
    class PNG
      alias_method :prawn_fast_png_old_initialize, :initialize

      def initialize(data) #:nodoc:
        @prawn_fast_png_data = data
        prawn_fast_png_old_initialize(data)
      end
      
      private
      def unfilter_image_data
        img = Magick::Image.from_blob(@prawn_fast_png_data).first

        # get only one color value per pixel (Intensity) for grayscale+alpha images
        format = color_type == 4 ? 'I' : 'RGB'

        img_data      = img.export_pixels_to_str(0, 0, width, height, format)
        alpha_channel = img.export_pixels_to_str(0, 0, width, height, 'A')

        img.destroy!
        @prawn_fast_png_data = nil

        @img_data      = Zlib::Deflate.deflate(img_data)
        @alpha_channel = Zlib::Deflate.deflate(alpha_channel)
      end
    end
  end
end


def collect_legend_images
  images = []
  service = 'http://sampleserver1.arcgisonline.com/ArcGIS/services/Portland/ESRI_LandBase_WebMercator/MapServer'
  legend_infos = ESRI::Soap::MapServer.get_legend_info(service, :image_return_type => :data)

  legend_infos.each do |legend_info|
    if legend_info.legendGroups[0].legendClasses.length == 1
      img_data = Base64.decode64(Base64.decode64(legend_info.legendGroups[0].legendClasses[0].symbolImage.imageData))
      images << {
        :label => legend_info.name,
        :image => Magick::Image.from_blob(img_data).first
      }
    else
      legend_info.legendGroups[0].legendClasses.each do |legend_class|
        img_data = Base64.decode64(Base64.decode64(legend_class.symbolImage.imageData))
        images << {
          :label => legend_class.label,
          :image => Magick::Image.from_blob(img_data).first
        }
      end
    end
  end

  images
end

def create_legend(pdf, opts = {})
  images = collect_legend_images

  columns = opts[:columns] || 4
  rows    = opts[:rows]    || 4
  gutter  = opts[:gutter]  || 0

  pdf.define_grid(:columns => columns, :rows => rows, :gutter => gutter)

  pdf.grid.rows.times do |i|
    pdf.grid.columns.times do |j|
      cell = pdf.grid(i,j)
      pdf.bounding_box cell.top_left, :width => cell.width, :height => cell.height do
        return if images.empty?
        image = images.shift

        pdf.image StringIO.new(image[:image].to_blob), :at => [pdf.bounds.top_left], :fit => [16, 16]
        pdf.text_box image[:label],
          :width    => cell.width,
          :height   => cell.height,
          :overflow => :ellipses,
          :at       => [pdf.bounds.left + 20, pdf.bounds.top - 2]
      end
    end
  end
end

def portrait_pdf
  print 'creating portrait pdf...'
  Prawn::Document.generate '/home/colin/portrait.pdf', :page_layout => :portrait do |pdf|
    box = pdf.bounds
    # html tag definitions
    pdf.tags :h1 => { :font_size => '25', :font_style => :bold }
    # html style definitions
    pdf.styles :footer => { :color => "#999", :font_style => :italic }
  
    # header
    pdf.bounding_box [box.left, box.top], :width => box.right, :height => 30 do
      pdf.text "<h1>Title</h1>"
    end

    # map
    pdf.bounding_box [box.left, pdf.cursor], :width => box.right, :height => box.width do
      pdf.stroke_bounds
      pdf.image "/home/colin/export.png", :at => [box.left, pdf.cursor], :width => box.width, :height => box.width
    end

    pdf.move_down 10
    # toc
    pdf.bounding_box [box.left, pdf.cursor], :width => box.right, :height => 140 do      
      pdf.padded_box 5 do
        create_legend(pdf, :columns => 4, :rows => 5)
      end
    end

    # footer
    pdf.canvas do
      footer = {
        :top_left => [box.absolute_left - 20, box.absolute_bottom - 15],
        :width    => box.right + 40,
        :height   => 15
      }

      pdf.bounding_box footer[:top_left], :width => footer[:width], :height => footer[:height] do
        pdf.text '<span class="footer">NB Aquatic Bio-Web</span>'
      end

      pdf.bounding_box footer[:top_left], :width => footer[:width], :height => footer[:height] do
        pdf.text "<span class=\"footer\">Generated on #{Time.now.strftime("%Y/%m/%d")}</span>", :align => :right
      end
    end
  end
  puts 'done'
end

def landscape_pdf
  print 'creating landscape pdf...'
  Prawn::Document.generate '/home/colin/landscape.pdf', :page_layout => :landscape do |pdf|
    box = pdf.bounds
    # html tag definitions
    pdf.tags :h1 => { :font_size => '25', :font_style => :bold }
    # html style definitions
    pdf.styles :footer => { :color => "#999", :font_style => :italic }

    # map
    pdf.bounding_box [box.left, box.top], :width => box.height, :height => box.height do
      pdf.stroke_bounds
      pdf.image "/home/colin/export.png", :at => [box.left, box.top], :width => box.height, :height => box.height
    end
  
    pdf.bounding_box [box.height + 10, box.top], :width => box.right - box.height - 10, :height => box.height do
      # header
      pdf.text "<h1>Title</h1>"
      pdf.move_down 10

      # toc
      pdf.bounding_box [pdf.bounds.left, pdf.cursor], :width => pdf.bounds.right, :height => pdf.cursor do
        create_legend(pdf, :columns => 1, :rows => 20)
      end
    end

    # footer
    pdf.canvas do
      footer = {
        :top_left => [box.absolute_left - 20, box.absolute_bottom - 15],
        :width    => box.right + 40,
        :height   => 15
      }

      pdf.bounding_box footer[:top_left], :width => footer[:width], :height => footer[:height] do
        pdf.text '<span class="footer">NB Aquatic Bio-Web</span>'
      end

      pdf.bounding_box footer[:top_left], :width => footer[:width], :height => footer[:height] do
        pdf.text "<span class=\"footer\">Generated on #{Time.now.strftime("%Y/%m/%d")}</span>", :align => :right
      end
    end
  end
  puts 'done'
end

PerfTools::CpuProfiler.start("/home/colin/pdf_perf") do
  start_time = Time.now
  portrait_pdf
  end_time = Time.now
  puts end_time - start_time
end

#
#start_time = Time.now
#landscape_pdf
#end_time = Time.now
#puts end_time - start_time
#end