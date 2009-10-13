$:.unshift File.dirname(__FILE__)
require 'rubygems'
require 'rack'

# configure the application
app = Rack::Builder.new do
  map "/cgns" do
    require 'cgns_search'
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run CgnsSearch.new
  end

  map "/postal_code" do
    require 'postal_code_lookup'
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run PostalCodeLookup.new
  end

  map "/rest_proxy" do
    require 'arcgis_server_rest_proxy'
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run ArcgisServerRestProxy.new
  end

  #  map "/print_map" do
  #    use Rack::CommonLogger
  #    use Rack::ShowExceptions
  #    run PrintMapService.new
  #  end
end

puts "running at http://127.0.0.1:9000/"
Rack::Handler::Mongrel.run app, :Port => 9000