require 'arcserver/map_server'

module PrintMap
  class LegendImagesCollector
    def collect(opts = {})
      puts 'creating map server object'
      map_server = ArcServer::MapServer.new(opts[:url])

      images = []
      puts 'getting legend'
      map_server.get_legend_info.each do |legend_info|
        puts 'processing result'
        legend_classes = legend_info[:legend_groups][0][:legend_classes]
        if legend_classes.length == 1
          img_data = Base64.decode64(legend_classes[0][:symbol_image][:image_data])
          images << {
            :label => legend_info[:name],
            :data  => img_data
          }
        else
          legend_classes.each do |legend_class|
            img_data = Base64.decode64(legend_class[:symbol_image][:image_data])
            images << {
              :label => legend_class[:label],
              :data  => img_data
            }
          end
        end
      end

      images
    end
  end
end
