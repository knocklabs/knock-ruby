# typed: strong

module Knockapi
  module Models
    class ScheduleUpdateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # A list of schedule IDs.
      sig { returns(T::Array[String]) }
      attr_accessor :schedule_ids

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      sig { returns(T.nilable(T.any(String, Knockapi::Models::RecipientReference::ObjectReference))) }
      attr_accessor :actor

      # An optional map of data to pass into the workflow execution.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The ending date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ending_at

      # The repeat rule for the schedule.
      sig { returns(T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule])) }
      attr_reader :repeats

      sig { params(repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)]).void }
      attr_writer :repeats

      # The starting date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      attr_accessor :tenant

      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(
            T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)
          ),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        schedule_ids:,
        actor: nil,
        data: nil,
        ending_at: nil,
        repeats: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              schedule_ids: T::Array[String],
              actor: T.nilable(T.any(String, Knockapi::Models::RecipientReference::ObjectReference)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
