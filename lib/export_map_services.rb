require 'arcserver'
require 'RMagick'

class ExportMapServices
  def call(env)
    request = Rack::Request.new(env)

    begin
      response = Rack::Response.new(export_map_services(request), 200, headers)
      response = maybe_cache_response(response)
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end

    response.to_a
  end

  private
  def export_map_services(request)
    opts = {
      :bbox        => request['bbox'],
      :f           => request['f'],
      :format      => request['format'],
      :transparent => request['transparent'],
      :size        => request['size'],
      :dpi         => request['dpi']
    }

    base_image = generate_base_image(opts)
    request['urls'].split(',').each do |url|
      map_service = ArcServer::MapServer.new(url)
      exported_image = map_service.export(opts)
      Magick::Image.from_blob(response.body).first
#      merge(base_image, exported_image)
    end


  end

  def generate_base_image(opts)
    base_image = Magick::Image.new(width, height)
    base_image.background_color = 'transparent'
    base_image.format = 'PNG'
    base_image
  end

  def maybe_cache_response(response)
    begin
      # using rack cache
      cached_response = Rack::Cache::Response.new(response.status, response.headers, response.body)
      cached_response.max_age = 1.week
      cached_response
    rescue
      response # just return the original response
    end
  end
end
