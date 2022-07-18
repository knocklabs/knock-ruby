# frozen_string_literal: true

require_relative '../lib/knock'
# rubocop:disable Metrics/BlockLength
describe 'tenant tests' do
  before do
    allow_any_instance_of(Knock::Client)
      .to receive(:execute_request)
      .with({ request: 'request' })
      .and_return('ok')
  end
  describe '#list' do
    before do
      allow_any_instance_of(Knock::Client)
        .to receive(:get_request)
        .with({ auth: true,
                path: '/v1/tenants',
                params: {} })
        .and_return('request')
    end
    it 'sends the correct parameters to the tenants API' do
      Knock::Tenants.list(options: {})
    end
  end

  describe '#get' do
    before do
      allow_any_instance_of(Knock::Client)
        .to receive(:get_request)
        .with({ auth: true,
                path: '/v1/tenants/tenant_id' })
        .and_return('request')
    end
    it 'sends the correct parameters to the tenants API' do
      Knock::Tenants.get(id: 'tenant_id')
    end
  end

  describe '#delete' do
    before do
      allow_any_instance_of(Knock::Client)
        .to receive(:delete_request)
        .with({ auth: true,
                path: '/v1/tenants/tenant_id' })
        .and_return('request')
    end
    it 'sends the correct parameters to the tenants API' do
      Knock::Tenants.delete(id: 'tenant_id')
    end
  end

  describe '#set' do
    before do
      body = { name: 'My tenant', settings: { branding: { primary_color: '#FFFFFF' } } }
      allow_any_instance_of(Knock::Client).to receive(:put_request)
        .with({ auth: true,
                body: body, path: '/v1/tenants/tenant_id' })
        .and_return('request')
    end
    it 'sends the correct parameters to the tenants API' do
      tenant_data = { name: 'My tenant', settings: { branding: { primary_color: '#FFFFFF' } } }
      Knock::Tenants.set(id: 'tenant_id', tenant_data: tenant_data)
    end
  end
end
# rubocop:enable Metrics/BlockLength
