require_relative "./pact_helper"
require_relative "../../lib/knock"
describe Knock, :pact => true do

    before do
      Knock.key = 'sk_test_p0Us9K0206dMtJrPrhaB3A9TRL_IVasq5A7Fl2_CB7I'
    end
  
    subject { Knock::Tenants }
  
    describe "list_tenants" do
      before do
        knock_client.given("tenants exists").
          upon_receiving("a request for a tenant").
          with(Knock::Tenants.list()).
          will_respond_with(
            status: 200,
            headers: {'Content-Type' => 'application/json'}
          )
      end

      it "returns a tenant" do
        expect(subject.list).to eq({"entries"=>[{"__typename"=>"Tenant", "created_at"=>nil, "id"=>"tenant-test", "properties"=>{"name"=>"Tenant Test"}, "settings"=>nil, "updated_at"=>"2022-07-11T20:35:53.776Z"}], "page_info"=>{"__typename"=>"PageInfo", "after"=>nil, "before"=>nil, "page_size"=>25}})
      end
    end
  end