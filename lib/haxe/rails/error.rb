module Haxe
  module Rails
    module Error
      class HaxeRailsError < StandardError
      end

      class HaxeCompileError < HaxeRailsError
        ##
        # @param [String] message haxe compile result message.
        ##
        def initialize(message)
          super message
        end
      end

      class HxmlOutputTargetError < HaxeRailsError
        def initialize
          super 'Compile target only javascript.'
        end
      end
    end
  end
end