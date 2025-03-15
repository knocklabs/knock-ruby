# typed: strong

module Knockapi
  module Resources
    class Schedules
      # Create schedules
      sig do
        params(
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)],
          repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::ScheduleCreateResponse)
      end
      def create(
        recipients:,
        repeats:,
        workflow:,
        data: nil,
        ending_at: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      )
      end

      # Update schedules
      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          ),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::ScheduleUpdateResponse)
      end
      def update(
        schedule_ids:,
        actor: nil,
        data: nil,
        ending_at: nil,
        repeats: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      )
      end

      # List schedules
      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)],
          tenant: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Schedule])
      end
      def list(
        workflow:,
        after: nil,
        before: nil,
        page_size: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      # Delete schedules
      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::ScheduleDeleteResponse)
      end
      def delete(schedule_ids:, request_options: {})
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
