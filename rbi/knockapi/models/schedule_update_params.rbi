# typed: strong

module Knockapi
  module Models
    class ScheduleUpdateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ScheduleUpdateParams, Knockapi::Internal::AnyHash)
        end

      # A list of schedule IDs.
      sig { returns(T::Array[String]) }
      attr_accessor :schedule_ids

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig do
        returns(
          T.nilable(
            T.any(String, Knockapi::RecipientReference::ObjectReference)
          )
        )
      end
      attr_accessor :actor

      # An optional map of data to pass into the workflow execution. There is a 10MB
      # limit on the size of the full `data` payload. Any individual string value
      # greater than 1024 bytes in length will be
      # [truncated](/developer-tools/api-logs#log-truncation) in your logs.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The ending date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ending_at

      # The repeat rule for the schedule.
      sig { returns(T.nilable(T::Array[Knockapi::ScheduleRepeatRule])) }
      attr_reader :repeats

      sig do
        params(repeats: T::Array[Knockapi::ScheduleRepeatRule::OrHash]).void
      end
      attr_writer :repeats

      # The starting date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::TenantRequest))) }
      attr_accessor :tenant

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
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of schedule IDs.
        schedule_ids:,
        # A reference to a recipient, either a user identifier (string) or an object
        # reference (ID, collection).
        actor: nil,
        # An optional map of data to pass into the workflow execution. There is a 10MB
        # limit on the size of the full `data` payload. Any individual string value
        # greater than 1024 bytes in length will be
        # [truncated](/developer-tools/api-logs#log-truncation) in your logs.
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

      sig do
        override.returns(
          {
            schedule_ids: T::Array[String],
            actor:
              T.nilable(
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ),
            data: T.nilable(T::Hash[Symbol, T.anything]),
            ending_at: T.nilable(Time),
            repeats: T::Array[Knockapi::ScheduleRepeatRule],
            scheduled_at: T.nilable(Time),
            tenant: T.nilable(T.any(String, Knockapi::TenantRequest)),
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
