require 'rubygems'
require 'rake'
require 'rake/rdoctask'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'atlas_middleware'
    gem.summary = 'Middleware components for Atlas Projects'
    gem.description = gem.summary
    gem.author = 'Colin Casey'
    gem.email = 'casey.colin@gmail.com'
    # gem.homepage = ''
    gem.files = 'lib/**/*.rb'
    gem.files.exclude 'lib/main.rb'
    gem.add_dependency('rack')
    gem.add_dependency('httparty')
    gem.add_dependency('soap4r')
    gem.add_dependency('arcserver.rb')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::RDocTask.new do |rdoc|
  files =['README', 'LICENSE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "Atlas Middleware Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end