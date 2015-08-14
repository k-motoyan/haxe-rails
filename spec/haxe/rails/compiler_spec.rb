require 'pathname'
require 'haxe/rails/compiler'

describe Haxe::Rails::Compiler do
  let(:hxml_path) do
    File.expand_path 'spec/fixtures/haxe_projects/will_compile/compile.hxml'
  end
  let(:hxml_src) { Pathname(hxml_path).read }

  describe 'compile' do
    context 'compile success' do
      before { @output = Haxe::Rails::Compiler.compile(hxml_path, hxml_src) }
      it { expect(@output).not_to be_empty }
    end

    context 'compile failed' do
      let(:hxml_path) do
        File.expand_path 'spec/fixtures/haxe_projects/fail_compile/compile.hxml'
      end
      it { expect{Haxe::Rails::Compiler.compile(hxml_path, hxml_src)}.to raise_error(Haxe::Rails::Error::HaxeCompileError) }
    end

    context 'unexpected compile target' do
      let(:hxml_path) do
        File.expand_path 'spec/fixtures/haxe_projects/target_python/compile.hxml'
      end
      it { expect{Haxe::Rails::Compiler.compile(hxml_path, hxml_src)}.to raise_error(Haxe::Rails::Error::HxmlOutputTargetError) }
    end
  end
end