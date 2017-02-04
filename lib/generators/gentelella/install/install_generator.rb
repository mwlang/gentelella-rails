module Gentelella
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "Copies custom js and css files to your application."
    def copy_files
      assets_folder = File.expand_path("app/assets")
      template_folder = File.expand_path(File.expand_path('../templates', __FILE__))
      copy_file "#{template_folder}/gentelella-custom.js", "#{assets_folder}/javascripts/gentelella-custom.js"
      copy_file "#{template_folder}/gentelella-custom.scss", "#{assets_folder}/stylesheets/gentelella-custom.scss"
    end

  end
end
