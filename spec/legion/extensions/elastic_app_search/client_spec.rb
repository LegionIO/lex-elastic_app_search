# frozen_string_literal: true

RSpec.describe Legion::Extensions::ElasticAppSearch::Client do # rubocop:disable Metrics/BlockLength
  let(:mock_eas_client) { instance_double(Elastic::AppSearch::Client) }

  before do
    allow(Elastic::AppSearch::Client).to receive(:new).and_return(mock_eas_client)
  end

  describe '#initialize' do
    it 'stores default options' do
      client = described_class.new
      expect(client.opts).to include(host: 'http://localhost:3002')
    end

    it 'compacts nil api_key out when not provided' do
      client = described_class.new
      expect(client.opts.key?(:api_key)).to be false
    end

    it 'accepts a custom host' do
      client = described_class.new(host: 'https://my-deployment.ent-search.aws.cloud.es.io')
      expect(client.opts[:host]).to eq('https://my-deployment.ent-search.aws.cloud.es.io')
    end

    it 'accepts an api_key' do
      client = described_class.new(api_key: 'my-api-key')
      expect(client.opts[:api_key]).to eq('my-api-key')
    end

    it 'accepts extra options' do
      client = described_class.new(timeout: 30)
      expect(client.opts[:timeout]).to eq(30)
    end
  end

  describe '#client' do
    it 'builds an Elastic::AppSearch::Client with stored opts' do
      instance = described_class.new(host: 'http://localhost:3002', api_key: 'key')
      expect(Elastic::AppSearch::Client).to receive(:new).with(
        host_identifier: 'http://localhost:3002',
        api_key:         'key'
      ).and_return(mock_eas_client)
      instance.client
    end
  end

  describe 'runner inclusion' do
    let(:client) { described_class.new }

    it 'includes Analytics runner methods' do
      expect(client).to respond_to(:top_queries)
      expect(client).to respond_to(:count)
      expect(client).to respond_to(:top_clicks)
    end

    it 'includes ClickThrough runner methods' do
      expect(client).to respond_to(:log)
    end

    it 'includes Curations runner methods' do
      expect(client).to respond_to(:create)
      expect(client).to respond_to(:get)
      expect(client).to respond_to(:list)
      expect(client).to respond_to(:update)
      expect(client).to respond_to(:destroy)
    end

    it 'includes Documents runner methods' do
      expect(client).to respond_to(:delete)
    end

    it 'includes Engines runner methods' do
      expect(client).to respond_to(:create_meta)
      expect(client).to respond_to(:add_meta_source)
      expect(client).to respond_to(:delete_meta_source)
    end

    it 'includes Schemas runner methods' do
      expect(client).to respond_to(:get)
      expect(client).to respond_to(:update)
    end

    it 'includes Search runner methods' do
      expect(client).to respond_to(:search)
      expect(client).to respond_to(:multi_search)
      expect(client).to respond_to(:query_suggestion)
      expect(client).to respond_to(:settings)
      expect(client).to respond_to(:update_settings)
      expect(client).to respond_to(:reset_settings)
    end

    it 'includes Synonyms runner methods' do
      expect(client).to respond_to(:create)
    end
  end
end
