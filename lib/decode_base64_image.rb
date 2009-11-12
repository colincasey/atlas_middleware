# encoding: utf-8
require 'base64'

class DecodeBase64Image
  def call(env)
    request = Rack::Request.new(env)
    content_type = request['content_type'] || 'image/png'
    image_data = request['image_data']

    begin
      raise "Missing required parameter 'image_data'" if image_data.to_s.empty?      
      response = Rack::Response.new(Base64.decode64(image_data), 200, { 'Content-Type' => content_type })
      # set caching information
      response.headers['Cache-Control'] = "public, max-age=#{1.month}"
    rescue Exception => e
      response = Rack::Response.new(e.message, 500, { 'Content-Type' => 'text/plain' })
    end

    response.to_a
  end
end