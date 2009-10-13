gem 'soap4r'
require File.dirname(__FILE__) + '/esri/soap/map_server/client.rb'

class ArcServerSoap
  def call(env)
    request = Rack::Request.new(env)

    headers = { "Content-Type" => "application/json" }
    r = Rack::Response # shorthand
    response = r.new(call_soap_service(request), 200, headers) # rescue r.new(500, headers, '')
    #response.max_age = 1.month

    response.to_a
  end

  def call_soap_service(request)
    endpoint = rest_url_to_soap_service(request.params['rest_url'])
    soap_client = ESRI::Soap::MapServer::Client.new(endpoint)
    #soap_client.wiredump_dev = STDOUT
    #soap_client.options['protocol.http.receive_timeout'] = 360

    map_name = soap_client.getDefaultMapName({}).result

    img_type = ESRI::Soap::MapServer::ImageType.new
    img_type.imageFormat = ESRI::Soap::MapServer::EsriImageFormat::EsriImagePNG;
    img_type.imageReturnType = ESRI::Soap::MapServer::EsriImageReturnType::EsriImageReturnURL;

    legend_patch = ESRI::Soap::MapServer::MapServerLegendPatch.new
    legend_patch.imageDPI = 96
    legend_patch.height   = 24
    legend_patch.width    = 24

    legends = soap_client.getLegendInfo(
      :mapName => map_name,
      :layerIDs => [],
      :legendPatch => legend_patch,
      :imageType => img_type
    ).result
    
    legends.to_json
  end

  def rest_url_to_soap_service(rest_url)
    rest_url.sub('ArcGIS/rest', 'ArcGIS')
  end

end
