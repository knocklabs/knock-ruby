# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Integrations::CensusTest < Knockapi::Test::ResourceTest
  def test_custom_destination_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.integrations.census.custom_destination(id: "id", jsonrpc: "jsonrpc", method_: "method")

    assert_pattern do
      response => Knockapi::Models::Integrations::CensusCustomDestinationResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        result: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end
end
