require 'rails/generators'
require 'generators/haxe/assets_generator'

describe Haxe::Generators::AssetsGenerator do
  describe 'static method' do
    describe 'source_root' do
      subject { Haxe::Generators::AssetsGenerator.source_root() }
      it { is_expected.to match /haxe-rails\/lib\/generators\/haxe\/templates/ }
    end
  end
end
