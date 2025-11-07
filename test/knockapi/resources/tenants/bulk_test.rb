# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Tenants::BulkTest < Knockapi::Test::ResourceTest
  def test_delete_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.tenants.bulk.delete(tenant_ids: ["string"])

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

  def test_set_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.tenants.bulk.set(tenants: [{id: "tenant_1"}])

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
