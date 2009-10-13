require 'prawn'
require 'prawn/format'
require 'prawn/layout'
require 'open-uri'

module PrintMap
  class PdfGenerator
    def generate(opts = {})
      title  = opts[:title]
      map_image  = opts[:map_image]
      layout = opts[:page_layout]
      legend_images = opts[:legend_images]

      pdf = Prawn::Document.new(:page_layout => layout) do |pdf|
        # html tag definitions
        pdf.tags :h1 => { :font_size => '25', :font_style => :bold }
        # html style definitions
        pdf.styles :footer => { :color => "#999", :font_style => :italic }
        # generate the pdf
        send("generate_#{layout}_pdf", pdf, title, map_image, legend_images)
        write_footer(pdf)
      end

      pdf
    end

    def generate_portrait_pdf(pdf, title, map_image, legend_images)
      box = pdf.bounds
      # header
      pdf.bounding_box [box.left, box.top], :width => box.right, :height => 30 do
        pdf.text "<h1>#{title}</h1>"
      end

      # map
      pdf.bounding_box [box.left, pdf.cursor], :width => box.right, :height => box.width do
        pdf.stroke_bounds
        pdf.image StringIO.new(map_image.to_blob), :at => [box.left, pdf.cursor], :width => box.width, :height => box.width
      end

      pdf.move_down 10
      # toc
      pdf.bounding_box [box.left, pdf.cursor], :width => box.right, :height => 140 do
        pdf.padded_box 5 do
          create_legend(pdf, legend_images, :columns => 4, :rows => 5)
          pdf.stroke_bounds
        end
      end
    end

    def generate_landscape_pdf(pdf, title, image, legend_images)
      box = pdf.bounds
      # map
      pdf.bounding_box [box.left, box.top], :width => box.height, :height => box.height do
        pdf.stroke_bounds
        pdf.image StringIO.new(image.to_blob), :at => [box.left, box.top], :width => box.height, :height => box.height
      end


      pdf.bounding_box [box.height + 10, box.top], :width => box.right - box.height - 10, :height => box.height do
        # header
        pdf.text "<h1>#{title}</h1>"
        pdf.move_down 10

        # toc
        pdf.bounding_box [pdf.bounds.left, pdf.cursor], :width => pdf.bounds.right, :height => pdf.cursor do
          create_legend(pdf, legend_images, :columns => 1, :rows => 20)
          pdf.stroke_bounds
        end
      end
    end

    def write_footer(pdf)
      box = pdf.bounds
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

    def create_legend(pdf, legend_images, opts = {})
      columns = opts[:columns] || 4
      rows    = opts[:rows]    || 4
      gutter  = opts[:gutter]  || 0

      pdf.define_grid(:columns => columns, :rows => rows, :gutter => gutter)

      pdf.grid.rows.times do |i|
        pdf.grid.columns.times do |j|
          cell = pdf.grid(i,j)
          pdf.bounding_box cell.top_left, :width => cell.width, :height => cell.height do
            return if legend_images.empty?
            image = legend_images.shift

            pdf.image StringIO.new(image[:data]), :at => [pdf.bounds.top_left], :fit => [16, 16]
            pdf.text_box image[:label],
              :width    => cell.width,
              :height   => cell.height,
              :overflow => :ellipses,
              :at       => [pdf.bounds.left + 20, pdf.bounds.top - 2]
          end
        end
      end
    end    
  end
end

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