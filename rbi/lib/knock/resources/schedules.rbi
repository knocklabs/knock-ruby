# typed: strong

module Knock
  module Resources
    class Schedules
      sig do
        params(
          recipients: T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)],
          repeats: T::Array[Knock::Models::ScheduleRepeatRule],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ScheduleCreateResponse)
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

      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[Knock::Models::ScheduleRepeatRule],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ScheduleUpdateResponse)
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

      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)],
          tenant: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Schedule])
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

      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ScheduleDeleteResponse)
      end
      def delete(schedule_ids:, request_options: {})
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
