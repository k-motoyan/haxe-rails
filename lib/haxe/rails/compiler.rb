require 'pathname'
require 'haxe-cli-proxy'

module Haxe
  module Rails
    class Compiler
      class << self
        ##
        # Execute haxe compile by hxml.
        #
        # @param [String] hxml_path hxml file path.
        # @param [String] hxml_src hxml source code.
        # @return [String] compiled javascript code.
        ##
        def compile(hxml_path, hxml_src)
          dirname = File.dirname(hxml_path)
          filename = File.basename(hxml_path)
          result = ::Haxe::Cli::Proxy::Command.compile(dirname, { hxml: filename })

          unless result.stderr.empty?
            raise ::Haxe::Rails::Error::HaxeCompileError.new(result.stderr)
          end

          matches = /-js (.+)/.match(hxml_src)

          if matches.nil?
            raise ::Haxe::Rails::Error::HxmlOutputTargetError.new
          end

          Pathname("#{dirname}/#{matches[1]}").read
        end
      end
    end
  end
end