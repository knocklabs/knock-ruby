# frozen_string_literal: true

require_relative "../test_helper"

class Knock::Test::Resources::TenantsTest < Knock::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.list

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Tenant
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

    response = @knock.tenants.delete("id")

    assert_pattern do
      response => String
    end
  end

  def test_get
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.tenants.get("id")

    assert_pattern do
      response => Knock::Models::Tenant
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

    response = @knock.tenants.set("id")

    assert_pattern do
      response => Knock::Models::Tenant
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String
      }
    end
  end
end
