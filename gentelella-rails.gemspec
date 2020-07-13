lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gentelella/version"

Gem::Specification.new do |s|
  s.name        = "gentelella-rails"
  s.version     = Gentelella::VERSION
  s.authors     = ["Michael Lang"]
  s.email       = ["mwlang@cybrains.net"]
  s.homepage    = "https://github.com/mwlang/gentelella-rails"
  s.summary     = "Injects the gentelella theme and javascript files into Rails assets pipeline"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{assets,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency "railties", ">= 4.0"
  s.add_runtime_dependency 'sass-rails', '>= 5.0'
  s.add_runtime_dependency 'coffee-rails'

  s.add_runtime_dependency "bootstrap-sass", "~> 3.4.1"
  s.add_runtime_dependency "font-awesome-sass", "~> 4.7.0"
  s.add_runtime_dependency "jquery-rails"
  s.add_runtime_dependency "icheck-rails"
  s.add_runtime_dependency "nprogress-rails"
  s.add_runtime_dependency "momentjs-rails"
  s.add_runtime_dependency "bootstrap-daterangepicker-rails", ">= 0.1.7"
  s.add_runtime_dependency "fastclick-rails"
  s.add_runtime_dependency "chart-js-rails"
  s.add_runtime_dependency "flot-rails"
  s.add_runtime_dependency "switchery-rails"
  s.add_runtime_dependency "select2-rails"
  s.add_runtime_dependency "parsley-rails"

  s.add_development_dependency "sqlite3"
end
