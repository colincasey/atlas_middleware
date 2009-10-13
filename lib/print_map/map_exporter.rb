require 'httparty'
require 'RMagick'

module PrintMap
  class MapExporter
    def export(opts = {})
      service = opts[:service]
      query = {
        :bbox        => opts[:bbox],
        :f           => :image,
        :format      => :png24,
        :transparent => true,
        :size        => opts[:size],
        :dpi         => opts[:dpi]
      }
      response = HTTParty.get("#{service}/export", :query => query)
      Magick::Image.from_blob(response.body).first
    end
  end
end