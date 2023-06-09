# frozen_string_literal: true

# Please note: cannot test, if it really accesses your platform clipboard.

require_relative "spec_helper"

os_to_restore = RbConfig::CONFIG['host_os']

describe Clipboard do
  before do
    RbConfig::CONFIG['host_os'] = os_to_restore
    @is_windows = Clipboard.implementation.name == 'Clipboard::Windows'
  end

  let(:expected) { ->(text) { @is_windows ? text.encode(Encoding::UTF_16LE) : text } }

  it "has a VERSION" do
    expect( Clipboard::VERSION ).to match /^\d+\.\d+\.\d+$/
  end

  it "can copy & paste" do
    text = "FOO\nBAR"
    Clipboard.copy(text)
    expect( Clipboard.paste.bytes ).to eq expected.(text).bytes
  end

  it "can copy & paste with multibyte char" do
    Encoding.default_external = 'utf-8'
    text = '日本語'
    Clipboard.copy(text)
    expect( Clipboard.paste ).to eq expected.(text)
  end

  it "returns data on copy" do
    text = 'xxx'
    expect( Clipboard.copy(text) ).to eq expected.(text)
  end

  it "can clear" do
    Clipboard.copy('xxx')
    Clipboard.clear
    expect( Clipboard.paste ).to eq expected.('')
  end

  describe "when included" do
    class A
      include Clipboard
    end

    it "can copy & paste & clear" do
      a = A.new
      text = 'XXX'
      expect( a.send(:copy, text) ).to eq expected.(text)
      expect( a.send(:paste) ).to eq expected.(text)
      a.send(:clear)
      expect( a.send(:paste) ).to eq expected.('')
    end
  end

  # See https://github.com/janlelis/clipboard/issues/32 by @orange-kao
  it "can copy more than 8192 bytes" do
    # first batch
    data1 = Random.new.bytes(2**14).unpack("H*").first
    data2 = Clipboard.copy(data1)

    expect(data2).to eq expected.(data1)

    # second batch
    data1 = Random.new.bytes(2**14).unpack("H*").first
    data2 = Clipboard.copy(data1)

    expect(data2).to eq expected.(data1)
  end

  describe :implementation do
    before do
      $VERBOSE = true
      Clipboard.implementation = nil
    end

    it "does not warn on normal detection" do
      if system('which xclip >/dev/null 2>&1') || system('which xsel >/dev/null 2>&1')
        expect( $stderr ).not_to receive(:puts)
      end
      Clipboard.implementation
    end

    it "warns when OS is unknown" do
      RbConfig::CONFIG['host_os'] = 'Fooo OS'
      expect( $stderr ).to receive(:puts)
      expect( Clipboard.implementation ).to eq Clipboard::File
    end

    it "does not warn when $VERBOSE is false" do
      $VERBOSE = false
      RbConfig::CONFIG['host_os'] = 'Fooo OS'
      expect( $stderr ).not_to receive(:puts)
      Clipboard.implementation
    end
  end
end
