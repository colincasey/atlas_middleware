require 'arcserver'

class MapServerLegendInfo
  def call(env)
    request = Rack::Request.new(env)
    
    begin
      map_server = ArcServer::MapServer.new(request['url'])
      map_name = map_server.get_default_map_name
      legend = map_server.get_default_map_name(:map_name => map_name)
    rescue Exception => e
      return [500, { "Content-Type" => "text/plain" }, e.message]
    end

    [200, { "Content-Type" => "application/json" }, legend.to_json]
  end
end
