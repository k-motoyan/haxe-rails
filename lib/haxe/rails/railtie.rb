module Haxe
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do |app|
        if ::Rails::VERSION::MAJOR >= 4 || app.config.assets.enabled
          Sprockets.register_engine '.hxml', ::Haxe::Rails::Template
        end
      end
    end
  end
end