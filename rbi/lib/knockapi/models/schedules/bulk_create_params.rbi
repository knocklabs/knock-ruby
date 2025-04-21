# typed: strong

module Knockapi
  module Models
    module Schedules
      class BulkCreateParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A list of schedules.
        sig { returns(T::Array[Knockapi::Models::Schedules::BulkCreateParams::Schedule]) }
        attr_accessor :schedules

        sig do
          params(
            schedules: T::Array[T.any(Knockapi::Models::Schedules::BulkCreateParams::Schedule, Knockapi::Internal::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(schedules:, request_options: {}); end

        sig do
          override
            .returns(
              {
                schedules: T::Array[Knockapi::Models::Schedules::BulkCreateParams::Schedule],
                request_options: Knockapi::RequestOptions
              }
            )
        end
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

          # The tenant to trigger the workflow for. Triggering with a tenant will use any
          # tenant-level overrides associated with the tenant object, and all messages
          # produced from workflow runs will be tagged with the tenant.
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

          # The tenant to trigger the workflow for. Triggering with a tenant will use any
          # tenant-level overrides associated with the tenant object, and all messages
          # produced from workflow runs will be tagged with the tenant.
          module Tenant
            extend Knockapi::Internal::Type::Union

            sig { override.returns([String, Knockapi::Models::TenantRequest]) }
            def self.variants; end
          end
        end
      end
    end
  end
end
