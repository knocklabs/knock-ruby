# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Schedules::BulkTest < Knockapi::Test::ResourceTest
  def test_create_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.schedules.bulk.create(schedules: [{workflow: "comment-created"}, {workflow: "comment-created"}])

    assert_pattern do
      response => Knockapi::Models::BulkOperation
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        estimated_total_rows: Integer,
        inserted_at: Time,
        name: String,
        processed_rows: Integer,
        status: Knockapi::Models::BulkOperation::Status,
        success_count: Integer,
        updated_at: Time,
        completed_at: Time | nil,
        error_count: Integer | nil,
        error_items: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::BulkOperation::ErrorItem]) | nil,
        failed_at: Time | nil,
        started_at: Time | nil
      }
    end
  end
end
