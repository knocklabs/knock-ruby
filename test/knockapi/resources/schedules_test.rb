# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::SchedulesTest < Knockapi::Test::ResourceTest
  def test_create
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.create

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule])
    end
  end

  def test_update
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.update

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule])
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
      row => Knockapi::Models::Schedule
    end

    assert_pattern do
      row => {
        id: String,
        inserted_at: Time,
        recipient: Knockapi::Models::Recipient,
        repeats: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::ScheduleRepeatRule]),
        updated_at: Time,
        workflow: String,
        _typename: String | nil,
        actor: Knockapi::Models::Recipient | nil,
        data: Knockapi::Internal::Type::Unknown | nil,
        last_occurrence_at: Time | nil,
        next_occurrence_at: Time | nil,
        tenant: String | nil
      }
    end
  end

  def test_delete
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.schedules.delete

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule])
    end
  end
end
