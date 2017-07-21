module Gentelella
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w{ gentelella.css }
      Rails.application.config.assets.precompile += %w{ gentelella.js }
      Rails.application.config.assets.precompile += %w{ *.js }
      # Rails.application.config.assets.paths << root.join("app", "assets", "images")
    end

    initializer 'gentelella.assets.precompile' do |app|
      %w(stylesheets javascripts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
  end
end
