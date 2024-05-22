# frozen_string_literal: true

# typed: false
require_relative '../lib/knock'

describe Knock do
  describe '.configure' do
    context 'with key and no timeout' do
      before do
        Knock.configure do |config|
          config.key = 'example_api_key'
        end
      end

      it 'sets the key and default timeout configuration' do
        expect(Knock.config.key).to eq('example_api_key')
        expect(Knock.config.timeout).to eq(60)
      end
    end

    context 'with key and timeout' do
      before do
        Knock.configure do |config|
          config.key = 'example_api_key'
          config.timeout = 120
        end
      end

      it 'sets the key and timeout configuration' do
        expect(Knock.config.key).to eq('example_api_key')
        expect(Knock.config.timeout).to eq(120)
      end
    end
  end
end

describe Knock::Configuration do
  describe '.key!' do
    context 'with key set' do
      before do
        Knock.config.key = 'example_api_key'
      end

      it 'returns the key' do
        expect(Knock.config.key!).to eq('example_api_key')
      end
    end

    context 'with key not set' do
      before do
        Knock.config.key = nil
      end

      it 'throws an error' do
        expect do
          Knock.config.key!
        end.to raise_error(
          '`Knock.config.key` not set'
        )
      end
    end
  end
end
