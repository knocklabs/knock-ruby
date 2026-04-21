# typed: strong

module Knockapi
  module Resources
    # A workflow run represents an individual execution of a workflow for a specific
    # recipient.
    class WorkflowRecipientRuns
      # Returns a paginated list of workflow recipient runs for the current environment.
      sig do
        params(
          after: String,
          before: String,
          ending_at: Time,
          has_errors: T::Boolean,
          page_size: Integer,
          recipient:
            T.any(
              String,
              Knockapi::RecipientReference::ObjectReference::OrHash
            ),
          starting_at: Time,
          status:
            T::Array[
              Knockapi::WorkflowRecipientRunListParams::Status::OrSymbol
            ],
          tenant: String,
          workflow: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(
          Knockapi::Internal::ItemsCursor[Knockapi::WorkflowRecipientRun]
        )
      end
      def list(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Limits the results to workflow recipient runs started before the given date.
        ending_at: nil,
        # Limits the results to workflow recipient runs that have errors.
        has_errors: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        # Limits the results to workflow recipient runs for the given recipient. Accepts a
        # user ID string or an object reference with `id` and `collection`.
        recipient: nil,
        # Limits the results to workflow recipient runs started after the given date.
        starting_at: nil,
        # Limits the results to workflow recipient runs with the given status.
        status: nil,
        # Limits the results to workflow recipient runs for the given tenant.
        tenant: nil,
        # Limits the results to workflow recipient runs for the given workflow key.
        workflow: nil,
        request_options: {}
      )
      end

      # Returns a single workflow recipient run with its associated events.
      sig do
        params(
          id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::WorkflowRecipientRunDetail)
      end
      def get(
        # The unique identifier for the workflow recipient run (per-recipient).
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
