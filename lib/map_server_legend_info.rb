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
      response.headers['Cache-Control'] = "public, max-age=#{1.week}"
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end

    response.to_a
  end

  private
  def get_legends(request)
    map_server = ArcServer::MapServer.new(request['url'])
    map_name = map_server.get_default_map_name
    legend = map_server.get_legend_info(:map_name => map_name, :image_return_url => true)
    legend.to_json
  end
end
