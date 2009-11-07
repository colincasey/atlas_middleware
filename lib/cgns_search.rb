require 'rack'
require 'activesupport'
require 'httparty'

class CgnsSearch
  ALLOWED_PARAMS = %w(geoname)
  include HTTParty
  base_uri "gnss.nrcan.gc.ca"
  default_params :output => 'xml', :regionCode => 13
  format :xml

  def call(env)
    request = Rack::Request.new(env)

    headers = { "Content-Type" => "application/json" }
    begin
      response = Rack::Response.new(find(request.params), 200, headers)      
      # set caching information
      response.headers['Cache-Control'] = "public, max-age=#{1.week}"
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end
    
    response.to_a
  end

  private
  def find(query = {})
    safe_query = query.delete_if { |key,value| !ALLOWED_PARAMS.include?(key) }
    CgnsSearch.get('/gnss-srt/api', { :query => safe_query }).to_json
  end
end
