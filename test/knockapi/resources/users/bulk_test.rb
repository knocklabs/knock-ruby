# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::BulkTest < Knockapi::Test::ResourceTest
  def test_delete_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.bulk.delete(user_ids: %w[user_1 user_2])

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

  def test_identify_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.bulk.identify(users: [{id: "user_1"}])

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

  def test_set_preferences_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.bulk.set_preferences(preferences: {}, user_ids: %w[user_1 user_2])

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
