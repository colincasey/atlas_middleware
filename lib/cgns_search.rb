require 'rack'
#require 'rack/cache'
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
    r = Rack::Response
    begin
      response = r.new(find(request.params), 200, headers)
    rescue Exception => e
      response = r.new(e.message, 500, headers)
    end
    #response.max_age = 1.month
    
    response.to_a
  end
  
  def find(query = {})
    CgnsSearch.get('/gnss-srt/api', { :query => query }).to_json
  end
end
