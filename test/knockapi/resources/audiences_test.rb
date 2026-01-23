# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::AudiencesTest < Knockapi::Test::ResourceTest
  def test_add_members_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.audiences.add_members("key", members: [{user: {id: "dr_sattler"}}])

    assert_pattern do
      response => nil
    end
  end

  def test_list_members
    skip("Prism doesn't support callbacks yet")

    response = @knock.audiences.list_members("key")

    assert_pattern do
      response => Knockapi::Models::AudienceListMembersResponse
    end

    assert_pattern do
      response => {
        entries: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceMember]),
        page_info: Knockapi::PageInfo
      }
    end
  end

  def test_remove_members_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.audiences.remove_members("key", members: [{user: {id: "dr_sattler"}}])

    assert_pattern do
      response => nil
    end
  end
end
