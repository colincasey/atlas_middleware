require 'arcserver'
require 'activesupport'

class MapServerLegendInfo
  def call(env)
    request = Rack::Request.new(env)
    headers = { "Content-Type" => "application/json" }

    begin
      response = Rack::Response.new(get_legends(request['url']), 200, headers)
      response = maybe_cache_response(response)
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end

    response.to_a
  end

  private
  def get_legends(map_server_url)
    map_server = ArcServer::MapServer.new(map_server_url)
    map_name = map_server.get_default_map_name
    legend = map_server.get_legend_info(:map_name => map_name)
    legend.to_json
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
