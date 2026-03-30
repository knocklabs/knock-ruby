# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::TenantsTest < Knockapi::Test::ResourceTest
  def test_list
    response = @knock.tenants.list

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Tenant
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        name: String | nil,
        settings: Knockapi::Tenant::Settings | nil
      }
    end
  end

  def test_delete
    response = @knock.tenants.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    response = @knock.tenants.get("id")

    assert_pattern do
      response => Knockapi::Tenant
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        name: String | nil,
        settings: Knockapi::Tenant::Settings | nil
      }
    end
  end

  def test_set
    response = @knock.tenants.set("id")

    assert_pattern do
      response => Knockapi::Tenant
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        name: String | nil,
        settings: Knockapi::Tenant::Settings | nil
      }
    end
  end
end
