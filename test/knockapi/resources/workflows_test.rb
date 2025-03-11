# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::WorkflowsTest < Knockapi::Test::ResourceTest
  def test_cancel_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.workflows.cancel("key", cancellation_key: "cancel-workflow-123")

    assert_pattern do
      response => String
    end
  end

  def test_trigger
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.workflows.trigger("key")

    assert_pattern do
      response => Knockapi::Models::WorkflowTriggerResponse
    end

    assert_pattern do
      response => {
        workflow_run_id: String
      }
    end
  end
end
