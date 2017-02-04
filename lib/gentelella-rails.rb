require 'bootstrap-sass'
require 'font-awesome-sass'
require 'nprogress-rails'
require 'icheck-rails'
require 'momentjs-rails'
require 'bootstrap-daterangepicker-rails'
require 'fastclick-rails'
require 'chart-js-rails'
require 'flot-rails'
require 'datejs-rails'
require 'switchery-rails'
require 'select2-rails'
require 'parsley-rails'

module Gentelella
  class << self
    def load!
      register_rails_engine if rails?
    end

    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def fonts_path
      File.join assets_path, 'fonts'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def register_rails_engine
      require 'gentelella/engine'
    end
  end
end

Gentelella.load!
