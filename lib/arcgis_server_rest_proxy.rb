require 'rack'
require 'httparty'

class ArcgisServerRestProxy
  def call(env)
    request = Rack::Request.new(env)
    url = request.params.delete('url')
    call_proxy(url)
  end

  def call_proxy(url)
    response = HTTParty.get(url, :query => { :f => :json })
    [response.code, response.headers, response.body]
  end
end
