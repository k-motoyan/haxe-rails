require 'tilt/template'
require 'haxe/rails/compiler'

module Haxe
  module Rails
    class Template < ::Tilt::Template
      def prepare
      end

      def evaluate(scope, locals, &block)
        @output ||= ::Haxe::Rails::Compiler.compile(file, data)
      end

      def allows_script?
        false
      end

      self.default_mime_type = 'application/javascript'

      def self.engine_initialized?
        defined? ::Haxe::Rails::Compiler
      end
    end
  end
end