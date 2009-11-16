# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{atlas_middleware}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Colin Casey"]
  s.date = %q{2009-11-16}
  s.description = %q{Middleware components for Atlas Projects}
  s.email = %q{casey.colin@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "lib/arcgis_server_rest_proxy.rb",
     "lib/cgns_search.rb",
     "lib/decode_base64_image.rb",
     "lib/export_map_services.rb",
     "lib/ignore_ext_js_cache_buster.rb",
     "lib/map_server_legend_info.rb",
     "lib/postal_code_lookup.rb",
     "lib/print_map/job.rb",
     "lib/print_map/legend_images_collector.rb",
     "lib/print_map/map_exporter.rb",
     "lib/print_map/pdf_generator.rb",
     "lib/print_map/worker.rb",
     "lib/print_map_service.rb"
  ]
  s.homepage = %q{http://github.com/colincasey/atlas_middleware}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.requirements = ["ImageMagick bindings:", "If using Ruby - gem install rmagick (2.11.0)", "If using JRuby - gem install rmagick4j (0.3.7)"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Middleware components for Atlas Projects}
  s.test_files = [
    "test/test_helper.rb",
     "test/print_map_service_test.rb",
     "test/print_map/job_test.rb",
     "test/print_map/worker_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.4.5"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_runtime_dependency(%q<arcserver.rb>, [">= 0.1.2"])
      s.add_development_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_development_dependency(%q<rack-test>, [">= 0.4.1"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<httparty>, [">= 0.4.5"])
      s.add_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_dependency(%q<arcserver.rb>, [">= 0.1.2"])
      s.add_dependency(%q<shoulda>, [">= 2.10.2"])
      s.add_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_dependency(%q<rack-test>, [">= 0.4.1"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<httparty>, [">= 0.4.5"])
    s.add_dependency(%q<activesupport>, [">= 2.3.4"])
    s.add_dependency(%q<arcserver.rb>, [">= 0.1.2"])
    s.add_dependency(%q<shoulda>, [">= 2.10.2"])
    s.add_dependency(%q<mocha>, [">= 0.9.8"])
    s.add_dependency(%q<rack-test>, [">= 0.4.1"])
  end
end
