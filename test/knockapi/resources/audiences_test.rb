# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::AudiencesTest < Knockapi::Test::ResourceTest
  def test_add_members_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.audiences.add_members("key", members: [{user: {id: "dr_sattler"}}])

    assert_pattern do
      response => String
    end
  end

  def test_list_members
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.audiences.list_members("key")

    assert_pattern do
      response => Knockapi::Models::AudienceListMembersResponse
    end

    assert_pattern do
      response => {
        entries: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::AudienceMember]),
        page_info: Knockapi::Models::PageInfo
      }
    end
  end

  def test_remove_members_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.audiences.remove_members("key", members: [{user: {id: "dr_sattler"}}])

    assert_pattern do
      response => String
    end
  end
end
