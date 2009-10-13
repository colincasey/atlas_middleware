require 'rack'
require 'activesupport'
require 'httparty'

class CgnsSearch
  include HTTParty
  base_uri "gnss.nrcan.gc.ca"
  default_params :output => 'xml', :regionCode => 13
  format :xml

  def call(env)
    request = Rack::Request.new(env)

    headers = { "Content-Type" => "application/json" }
    begin
      response = Rack::Response.new(find(request.params), 200, headers)
      response = maybe_cache_response(response)
    rescue Exception => e
      response = Rack::Response.new({ :error => e.message }.to_json, 500, headers)
    end
    
    response.to_a
  end

  private
  def find(query = {})
    CgnsSearch.get('/gnss-srt/api', { :query => query }).to_json
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
