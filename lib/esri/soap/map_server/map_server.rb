gem 'soap4r'
require 'esri/soap/map_server/client'

module ESRI
  module Soap
    module MapServer
      # options:
      # * :image_return_type - :url or :data
      def self.get_legend_info(map_server_soap_url, opts = {})
        soap_client = Client.new(map_server_soap_url)
        soap_client.wiredump_dev = STDOUT

        image_return_type = opts[:image_return_type] || :url

        map_name = soap_client.getDefaultMapName({}).result

        img_type = ImageType.new
        img_type.imageFormat = EsriImageFormat::EsriImagePNG;
        img_type.imageReturnType = image_return_type == :url ? 
          EsriImageReturnType::EsriImageReturnURL :
          EsriImageReturnType::EsriImageReturnMimeData

        legend_patch = MapServerLegendPatch.new
        legend_patch.imageDPI = 96
        legend_patch.height   = 24
        legend_patch.width    = 24

        legends = soap_client.getLegendInfo(
          :mapName => map_name,
          :layerIDs => [],
          :legendPatch => legend_patch,
          :imageType => img_type
        ).result

        legends
      end
    end
  end
end