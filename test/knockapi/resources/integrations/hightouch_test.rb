# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Integrations::HightouchTest < Knockapi::Test::ResourceTest
  def test_embedded_destination_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.integrations.hightouch.embedded_destination(id: "id", jsonrpc: "jsonrpc", method_: "method")

    assert_pattern do
      response => Knockapi::Models::Integrations::HightouchEmbeddedDestinationResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        result: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end
end
