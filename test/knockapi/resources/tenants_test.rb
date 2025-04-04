# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::TenantsTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.list

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Models::Tenant
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String
      }
    end
  end

  def test_delete
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.delete("tenant_id")

    assert_pattern do
      response => String
    end
  end

  def test_get
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.get("tenant_id")

    assert_pattern do
      response => Knockapi::Models::Tenant
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String
      }
    end
  end

  def test_set
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.set("tenant_id")

    assert_pattern do
      response => Knockapi::Models::Tenant
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String
      }
    end
  end
end
