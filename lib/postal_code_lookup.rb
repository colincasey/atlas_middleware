require 'rack'
require 'activesupport'
require 'httparty'

class PostalCodeLookup
  class ServiceException < Exception; end

  include HTTParty
  base_uri "geoservices.cgdi.ca"
  format :xml
  default_params :version => '1.0.0',
    :request => 'GetPostalCode',
    :sortarea => 'FSA'

  def call(env)
    request = Rack::Request.new(env)

    headers = { "Content-Type" => "application/json" }
    begin
      response = Rack::Response.new(find(request.params['code']), 200, headers)
#      response = maybe_cache_response(response)
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end

    response.to_a
  end

  def find(code)
    result = PostalCodeLookup.get('/cgi-bin/postalcode/postalcode.cgi', { :query => { :code => code } })

    if error = result["ServiceExceptionReport"]
      raise ServiceException.new(error['ServiceException'])
    else
      postal_code = result['PostalCodeLookup']['PostalCodeResultSet']['PostalCode']
      location = postal_code["gml:centerOf"]["gml:Point"]
      epsg = location["srsName"].split('#').pop
      lng, lat = location["gml:coordinates"].split(',')
      return {
        :postal_code => postal_code["gml:name"],
        :epsg => epsg.to_i,
        :srs_name => location["srsName"],
        :latitude => lat.to_f,
        :longitude => lng.to_f,
        :placename => postal_code["Placename"],
        :province_or_territory => postal_code["ProvinceOrTerritory"]
      }.to_json
    end
  end

  def maybe_cache_response(response)
    begin
      # using rack cache
      cached_response = Rack::Cache::Response.new(response.status, response.headers, response.body)
      cached_response.max_age = 1.month
      cached_response
    rescue
      response # just return the original response
    end
  end
end