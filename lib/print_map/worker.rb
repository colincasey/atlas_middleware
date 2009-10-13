require 'prawn'
require 'RMagick'
require 'print_map/map_exporter'
require 'print_map/pdf_generator'
require 'print_map/legend_images_collector'

module PrintMap
  class Worker
    attr_reader :current_job
    attr_reader :map_exporter, :pdf_generator, :legend_images_collector

    def initialize(config = {})
      @map_exporter = config[:map_exporter] || MapExporter.new
      @pdf_generator = config[:pdf_generator] || PdfGenerator.new
      @legend_images_collector = config[:legend_images_collector] || LegendImagesCollector.new
    end

    def do_job(job)
      @current_job = job
      puts 'create composite map image'
      map_image  = create_composite_map_image
      puts 'collect legend images'
      legend_images = collect_legend_images
      puts 'generate pdf'
      pdf = generate_pdf(map_image, legend_images)
      puts 'cleanup'
      map_image.destroy!
      pdf
    end

    def create_composite_map_image
      width, height = 540, 510
      base_image = Magick::Image.new(width, height)
      base_image.background_color = 'transparent'
      base_image.format = 'PNG'

      current_job.services.each do |map_service|
        export_options = {
          :service => map_service,
          :dpi     => current_job.dpi,
          :bbox    => current_job.bbox.join(','),
          :size    => [width, height].join(',')
        }
        map_service_image = map_exporter.export(export_options)
        base_image.composite!(map_service_image, Magick::CenterGravity, Magick::OverCompositeOp)
        map_service_image.destroy!
      end

      base_image
    end

    def generate_pdf(map_image, legend_images)
      opts = {
        :title         => current_job.title,
        :map_image     => map_image,
        :page_layout   => current_job.page_layout,
        :legend_images => legend_images
      }
      pdf_generator.generate(opts)
    end

    def collect_legend_images
      images = []
      current_job.services.each do |url|
        puts 'fetching legends at ' + url
        images << legend_images_collector.collect(:url => url)
      end
      images.flatten
    end
  end
end