require 'rack'
require 'httparty'

class ArcgisServerRestProxy
  def call(env)    
    call_proxy!(Rack::Request.new(env))
  end

  def call_proxy!(request)
    url = request.params.delete('url')
    proxy_response = HTTParty.get(url, :query => { :f => :json })
    response = Rack::Response.new(proxy_response.body, proxy_response.code, {})
    # HTTParty returns request headers in lowercase
    if proxy_response.code == 200
      if proxy_response.headers['cache-control']
        response.headers['Cache-Control'] = proxy_response.headers['cache-control'].to_s.sub(/private/, 'public')
      else
        response.headers['Cache-Control'] = "public, max-age=#{1.day}"
      end
    end
    response.to_a
  end
end
