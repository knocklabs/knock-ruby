# typed: strong

module Knockapi
  module Models
    module Schedules
      class BulkCreateSchedulesRequest < Knockapi::Internal::Type::BaseModel
        # A list of schedules.
        sig { returns(T::Array[Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule]) }
        attr_accessor :schedules

        # MERYL A request to bulk create schedules. Accepts a list of schedules to create.
        # Each schedule must have a single recipient. The recipients do not have to be
        # unique.
        sig do
          params(
            schedules: T::Array[T.any(Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule, Knockapi::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(schedules:); end

        sig { override.returns({schedules: T::Array[Knockapi::Models::Schedules::BulkCreateSchedulesRequest::Schedule]}) }
        def to_hash; end

        class Schedule < Knockapi::Internal::Type::BaseModel
          # The key of the workflow.
          sig { returns(String) }
          attr_accessor :workflow

          # Specifies a recipient in a request. This can either be a user identifier
          # (string), an inline user request (object), or an inline object request, which is
          # determined by the presence of a `collection` property.
          sig do
            returns(
              T.nilable(
                T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
              )
            )
          end
          attr_accessor :actor

          # An optional map of data to pass into the workflow execution.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :data

          # The ending date and time for the schedule.
          sig { returns(T.nilable(Time)) }
          attr_accessor :ending_at

          # Specifies a recipient in a request. This can either be a user identifier
          # (string), an inline user request (object), or an inline object request, which is
          # determined by the presence of a `collection` property.
          sig do
            returns(
              T.nilable(
                T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
              )
            )
          end
          attr_reader :recipient

          sig do
            params(
              recipient: T.any(
                String,
                Knockapi::Models::InlineIdentifyUserRequest,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::InlineObjectRequest
              )
            )
              .void
          end
          attr_writer :recipient

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

          # A schedule represents a recurring workflow execution.
          sig do
            params(
              workflow: String,
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
              recipient: T.any(
                String,
                Knockapi::Models::InlineIdentifyUserRequest,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::InlineObjectRequest
              ),
              repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)],
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash))
            )
              .returns(T.attached_class)
          end
          def self.new(
            workflow:,
            actor: nil,
            data: nil,
            ending_at: nil,
            recipient: nil,
            repeats: nil,
            scheduled_at: nil,
            tenant: nil
          ); end
          sig do
            override
              .returns(
                {
                  workflow: String,
                  actor: T.nilable(
                    T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
                  ),
                  data: T.nilable(T::Hash[Symbol, T.anything]),
                  ending_at: T.nilable(Time),
                  recipient: T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest),
                  repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
                  scheduled_at: T.nilable(Time),
                  tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest))
                }
              )
          end
          def to_hash; end
        end
      end
    end
  end
end
