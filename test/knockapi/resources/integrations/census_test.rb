# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Integrations::CensusTest < Knockapi::Test::ResourceTest
  def test_custom_destination_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.integrations.census.custom_destination(id: "id", jsonrpc: "jsonrpc", method_: "method")

    assert_pattern do
      response => Knockapi::Models::Integrations::CensusCustomDestinationResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        result: Knockapi::Internal::Type::Unknown | nil
      }
    end
  end
end
