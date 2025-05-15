# typed: strong

module Knockapi
  module Models
    class ScheduleCreateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ScheduleCreateParams, Knockapi::Internal::AnyHash)
        end

      # The recipients to set the schedule for. Limited to 100 recipients per request.
      sig do
        returns(
          T::Array[
            T.any(
              String,
              Knockapi::InlineIdentifyUserRequest,
              Knockapi::InlineObjectRequest
            )
          ]
        )
      end
      attr_accessor :recipients

      # The repeat rule for the schedule.
      sig { returns(T::Array[Knockapi::ScheduleRepeatRule]) }
      attr_accessor :repeats

      # The key of the workflow.
      sig { returns(String) }
      attr_accessor :workflow

      # An optional map of data to pass into the workflow execution.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The ending date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ending_at

      # The starting date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::TenantRequest))) }
      attr_accessor :tenant

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            recipients:
              T::Array[
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest,
                  Knockapi::InlineObjectRequest
                )
              ],
            repeats: T::Array[Knockapi::ScheduleRepeatRule],
            workflow: String,
            data: T.nilable(T::Hash[Symbol, T.anything]),
            ending_at: T.nilable(Time),
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
