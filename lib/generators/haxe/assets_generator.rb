require 'rails/generators/named_base'

module Haxe
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      def self.source_root()
        File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def copy_haxe
        project_path = File.join('app/assets/javascripts', "#{file_name}.haxe")

        empty_directory File.join(project_path)
        empty_directory File.join(project_path, 'src')
        empty_directory File.join(project_path, 'src', file_name)

        template 'main.rb', File.join(project_path, 'src', file_name, 'Main.hx')
        template 'hxml.rb', File.join(project_path, "#{file_name}.hxml")
      end
    end
  end
end