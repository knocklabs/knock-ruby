# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Channels::BulkTest < Knockapi::Test::ResourceTest
  def test_update_message_status
    skip("Prism doesn't support callbacks yet")

    response = @knock.channels.bulk.update_message_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", :seen)

    assert_pattern do
      response => Knockapi::BulkOperation
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        estimated_total_rows: Integer,
        inserted_at: Time,
        name: String,
        processed_rows: Integer,
        status: Knockapi::BulkOperation::Status,
        success_count: Integer,
        updated_at: Time,
        completed_at: Time | nil,
        error_count: Integer | nil,
        error_items: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::BulkOperation::ErrorItem]) | nil,
        failed_at: Time | nil,
        progress_path: String | nil,
        started_at: Time | nil
      }
    end
  end
end
