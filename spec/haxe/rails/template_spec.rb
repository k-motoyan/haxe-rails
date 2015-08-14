describe Haxe::Rails::Template do
  let(:hxml_path) do
    File.expand_path 'spec/fixtures/haxe_projects/will_compile/compile.hxml'
  end

  before do
    @template = Haxe::Rails::Template.new(hxml_path)
  end

  describe 'instance property' do
    describe 'prepare' do
      it { expect(@template.prepare).to be_nil }
    end

    describe 'evaluate' do
      it { expect(@template.evaluate(nil, nil)).not_to be_empty }
    end

    describe 'allows_script?' do
      it { expect(@template.allows_script?).to be_falsey }
    end
  end

  describe 'static property' do
    describe 'default_mime_type' do
      it { expect(Haxe::Rails::Template::default_mime_type).to eq 'application/javascript' }
    end

    describe 'engine_initialized?' do
      it { expect(Haxe::Rails::Template.engine_initialized?).to eq 'constant' }
    end
  end
end