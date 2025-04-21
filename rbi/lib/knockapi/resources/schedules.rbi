# typed: strong

module Knockapi
  module Resources
    class Schedules
      sig { returns(Knockapi::Resources::Schedules::Bulk) }
      attr_reader :bulk

      # Creates one or more schedules for a workflow with the specified recipients,
      # timing, and data. Schedules can be one-time or recurring.
      sig do
        params(
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def create(
        # The recipients to trigger the workflow for. Can inline identify users, objects,
        # or use a list of user IDs. Limited to 1,000 recipients in a single trigger.
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
      ); end
      # Updates one or more existing schedules with new timing, data, or other
      # properties. All specified schedule IDs will be updated with the same values.
      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def update(
        # A list of schedule IDs.
        schedule_ids:,
        # Specifies a recipient in a request. This can either be a user identifier
        # (string), an inline user request (object), or an inline object request, which is
        # determined by the presence of a `collection` property.
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
      ); end
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
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Schedule])
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
      ); end
      # Permanently deletes one or more schedules identified by the provided schedule
      # IDs. This operation cannot be undone.
      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def delete(
        # A list of schedule IDs.
        schedule_ids:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
