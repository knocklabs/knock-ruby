require 'pact/consumer/rspec'

Pact.service_consumer "Knock Ruby" do
    has_pact_with "Knock Client" do
      mock_service :knock_client do
        port 4000
      end
    end
end