# frozen_string_literal: true

require_relative "../../test_helper"

class Knock::Test::Resources::Users::BulkTest < Knock::Test::ResourceTest
  def test_delete_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.delete(query_user_ids: ["string"], body_user_ids: %w[user_1 user_2])

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

  def test_identify_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.identify(users: [{id: "user_1"}])

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

  def test_set_preferences_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.set_preferences(preferences: {}, user_ids: %w[user_1 user_2])

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
