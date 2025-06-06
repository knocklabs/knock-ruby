# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::SchedulesTest < Knockapi::Test::ResourceTest
  def test_create_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.create(recipients: ["user_123"], workflow: "comment-created")

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Schedule])
    end
  end

  def test_update_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.update(schedule_ids: ["123e4567-e89b-12d3-a456-426614174000"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Schedule])
    end
  end

  def test_list_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.list(workflow: "workflow")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Schedule
    end

    assert_pattern do
      row => {
        id: String,
        inserted_at: Time,
        recipient: Knockapi::Recipient,
        repeats: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule]),
        updated_at: Time,
        workflow: String,
        _typename: String | nil,
        actor: Knockapi::Recipient | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        last_occurrence_at: Time | nil,
        next_occurrence_at: Time | nil,
        tenant: String | nil
      }
    end
  end

  def test_delete_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.delete(schedule_ids: ["123e4567-e89b-12d3-a456-426614174000"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Schedule])
    end
  end
end
