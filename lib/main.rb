$:.unshift File.dirname(__FILE__)
require 'rubygems'

require 'rack'
require 'activesupport'
require 'json'
require 'json/add/rails'

require 'cgns_search'
require 'postal_code_lookup'
require 'arc_server_soap'
require 'rest_proxy'
require 'print_map_service'

# setup cache directories
cache_dir    = File.expand_path(File.dirname(__FILE__) + "/../cache")
meta_store   = "#{cache_dir}/meta"
entity_store = "#{cache_dir}/body"
[cache_dir, meta_store, entity_store].each do |dir|
  unless File.exists?(dir)
    puts "creating cache directory #{dir}"
    Dir.mkdir(dir)
  end
end

# configure the application
app = Rack::Builder.new do
  map "/cgns" do
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run CgnsSearch.new
  end

  map "/postal_code" do
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run PostalCodeLookup.new
  end

  map "/print_map" do
    use Rack::CommonLogger
    use Rack::ShowExceptions
    run PrintMapService.new
  end

  map "/arcserver" do
    map "/soap" do
      use Rack::CommonLogger
      use Rack::ShowExceptions
      run ArcServerSoap.new
    end

    map "/rest" do
      use Rack::CommonLogger
      use Rack::ShowExceptions
      run RestProxy.new
    end
  end
end

puts "running at http://127.0.0.1:9000/"
Rack::Handler::Mongrel.run app, :Port => 9000