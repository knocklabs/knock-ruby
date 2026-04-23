# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::WorkflowRecipientRunsTest < Knockapi::Test::ResourceTest
  def test_list
    response = @knock.workflow_recipient_runs.list

    assert_pattern do
      response => Knockapi::Internal::ItemsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::WorkflowRecipientRun
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        status: Knockapi::WorkflowRecipientRun::Status,
        trigger_source: Knockapi::WorkflowRecipientRun::TriggerSource,
        updated_at: Time,
        workflow: String,
        workflow_run_id: String,
        actor: Knockapi::RecipientReference | nil,
        error_count: Integer | nil,
        tenant: String | nil
      }
    end
  end

  def test_get
    response = @knock.workflow_recipient_runs.get("id")

    assert_pattern do
      response => Knockapi::WorkflowRecipientRunDetail
    end
  end
end
