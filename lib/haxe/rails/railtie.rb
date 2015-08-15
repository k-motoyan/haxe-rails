require 'rails/railtie'

module Haxe
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do |app|
        Sprockets.register_engine '.hxml', ::Haxe::Rails::Template
      end
    end
  end
end