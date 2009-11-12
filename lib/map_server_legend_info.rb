require 'rack'
require 'arcserver'
require 'activesupport'

class MapServerLegendInfo
  def call(env)
    request = Rack::Request.new(env)
    headers = { "Content-Type" => "application/json" }

    begin
      response = Rack::Response.new(get_legends(request), 200, headers)
      # set caching information
      response.headers['Cache-Control'] = "public, max-age=#{1.month}"
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end

    response.to_a
  end

  private
  def get_legends(request)
    map_server = ArcServer::MapServer.new(request['url'])
    image_return_url = request['image_return_url'] == 'true'
    legend = map_server.get_legend_info(:image_return_url => image_return_url)
    legend.to_json
  end
end
