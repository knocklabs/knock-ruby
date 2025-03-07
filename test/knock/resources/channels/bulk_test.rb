# frozen_string_literal: true

require_relative "../../test_helper"

class Knock::Test::Resources::Channels::BulkTest < Knock::Test::ResourceTest
  def test_update_message_status_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.channels.bulk.update_message_status(
      :seen,
      channel_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )

    assert_pattern do
      response => Knock::Models::BulkOperation
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        estimated_total_rows: Integer,
        inserted_at: Time,
        name: String,
        processed_rows: Integer,
        status: Knock::Models::BulkOperation::Status,
        success_count: Integer,
        updated_at: Time,
        completed_at: Time | nil,
        error_count: Integer | nil,
        error_items: ^(Knock::ArrayOf[Knock::Models::BulkOperation::ErrorItem]) | nil,
        failed_at: Time | nil,
        started_at: Time | nil
      }
    end
  end
end
