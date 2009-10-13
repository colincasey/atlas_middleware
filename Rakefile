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
    gem.homepage = 'http://github.com/colincasey/atlas_middleware'
    gem.files = 'lib/**/*.rb'
    gem.files.exclude 'lib/main.rb'
    gem.add_dependency('rack', '>= 1.0.0')
    gem.add_dependency('httparty', '>= 0.4.5')
    gem.add_dependency('activesupport', '>= 2.3.4')
    gem.add_dependency('arcserver.rb', ">= 0.1.1")
    # gem.add_dependency('validatable', ">= 1.6.7") - used by print_map_service which isn't ready for production yet
    gem.add_development_dependency('shoulda', '>= 2.10.2')
    gem.add_development_dependency('mocha', '>= 0.9.8')
    gem.add_development_dependency('rack-test', '>= 0.4.1')
    gem.requirements << "ImageMagick bindings:"
    gem.requirements << 'If using Ruby - gem install rmagick (2.11.0)'
    gem.requirements << 'If using JRuby - gem install rmagick4j (0.3.7)'
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