# typed: strong

module Knockapi
  module Resources
    class Schedules
      sig { returns(Knockapi::Resources::Schedules::Bulk) }
      attr_reader :bulk

      # Creates one or more schedules for a workflow with the specified recipients,
      # timing, and data. Schedules can be one-time or recurring. This endpoint also
      # handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      sig do
        params(
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::InlineIdentifyUserRequest::OrHash,
                Knockapi::InlineObjectRequest::OrHash
              )
            ],
          repeats: T::Array[Knockapi::ScheduleRepeatRule::OrHash],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::TenantRequest::OrHash)),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T::Array[Knockapi::Schedule])
      end
      def create(
        # The recipients to set the schedule for. Limited to 100 recipients per request.
        recipients:,
        # The repeat rule for the schedule.
        repeats:,
        # The key of the workflow.
        workflow:,
        # An optional map of data to pass into the workflow execution.
        data: nil,
        # The ending date and time for the schedule.
        ending_at: nil,
        # The starting date and time for the schedule.
        scheduled_at: nil,
        # An request to set a tenant inline.
        tenant: nil,
        request_options: {}
      )
      end

      # Updates one or more existing schedules with new timing, data, or other
      # properties. All specified schedule IDs will be updated with the same values.
      # This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      sig do
        params(
          schedule_ids: T::Array[String],
          actor:
            T.nilable(
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[Knockapi::ScheduleRepeatRule::OrHash],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::TenantRequest::OrHash)),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T::Array[Knockapi::Schedule])
      end
      def update(
        # A list of schedule IDs.
        schedule_ids:,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        actor: nil,
        # An optional map of data to pass into the workflow execution.
        data: nil,
        # The ending date and time for the schedule.
        ending_at: nil,
        # The repeat rule for the schedule.
        repeats: nil,
        # The starting date and time for the schedule.
        scheduled_at: nil,
        # An request to set a tenant inline.
        tenant: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of schedules for the current environment, filtered by
      # workflow and optionally by recipients and tenant.
      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[String],
          tenant: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::Internal::EntriesCursor[Knockapi::Schedule])
      end
      def list(
        # Filter by workflow key.
        workflow:,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        # Filter by recipient IDs.
        recipients: nil,
        # Filter by tenant ID.
        tenant: nil,
        request_options: {}
      )
      end

      # Permanently deletes one or more schedules identified by the provided schedule
      # IDs. This operation cannot be undone.
      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T::Array[Knockapi::Schedule])
      end
      def delete(
        # A list of schedule IDs.
        schedule_ids:,
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
