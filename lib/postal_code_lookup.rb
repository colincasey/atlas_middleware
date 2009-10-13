require 'rack'
#require 'rack/cache'
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

    headers = { "Content-Type" => "text/plain" }
    r = Rack::Response # shorthand
    begin
      response = r.new(200, headers, find(request.params['code']))
    rescue Exception => e
      response = r.new(500, headers, e.message)
    end
#    response.max_age = 1.month

    response.to_a
  end

  def find(code)
    result = PostalCodeLookup.get('/cgi-bin/postalcode/postalcode.cgi', {
        :query => { :code => code }
      })

    if error = result["ServiceExceptionReport"]
      raise ServiceException.new(error['ServiceException'])
    else
      postal_code = result['PostalCodeLookup']['PostalCodeResultSet']['PostalCode']
      location = postal_code["gml:centerOf"]["gml:Point"]
      epsg = location["srsName"].split('#').pop
      lng, lat = location["gml:coordinates"].split(',')
      return {
        :postal_code => postal_code["gml:name"],
        :epsg => epsg,
        :srs_name => location["srsName"],
        :latitude => lat,
        :longitude => lng,
        :placename => postal_code["Placename"],
        :province_or_territory => postal_code["ProvinceOrTerritory"]
      }.to_json
    end
  end
end