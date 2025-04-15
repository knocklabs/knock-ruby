# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::BulkTest < Knockapi::Test::ResourceTest
  def test_delete_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.delete(user_ids: ["string"])

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

  def test_identify
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.identify

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

  def test_set_preferences
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.bulk.set_preferences

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
