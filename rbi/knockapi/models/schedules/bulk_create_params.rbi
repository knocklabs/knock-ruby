# typed: strong

module Knockapi
  module Models
    module Schedules
      class BulkCreateParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Schedules::BulkCreateParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of schedules.
        sig do
          returns(T::Array[Knockapi::Schedules::BulkCreateParams::Schedule])
        end
        attr_accessor :schedules

        sig do
          params(
            schedules:
              T::Array[Knockapi::Schedules::BulkCreateParams::Schedule::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of schedules.
          schedules:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              schedules:
                T::Array[Knockapi::Schedules::BulkCreateParams::Schedule],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Schedule < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Schedules::BulkCreateParams::Schedule,
                Knockapi::Internal::AnyHash
              )
            end

          # The key of the workflow.
          sig { returns(String) }
          attr_accessor :workflow

          # Specifies a recipient in a request. This can either be a user identifier
          # (string), an inline user request (object), or an inline object request, which is
          # determined by the presence of a `collection` property.
          sig do
            returns(
              T.nilable(
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest,
                  Knockapi::InlineObjectRequest
                )
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

          # Specifies a recipient in a request. This can either be a user identifier
          # (string), an inline user request (object), or an inline object request, which is
          # determined by the presence of a `collection` property.
          sig do
            returns(
              T.nilable(
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest,
                  Knockapi::InlineObjectRequest
                )
              )
            )
          end
          attr_reader :recipient

          sig do
            params(
              recipient:
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest::OrHash,
                  Knockapi::InlineObjectRequest::OrHash
                )
            ).void
          end
          attr_writer :recipient

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

          # A schedule represents a recurring workflow execution.
          sig do
            params(
              workflow: String,
              actor:
                T.nilable(
                  T.any(
                    String,
                    Knockapi::InlineIdentifyUserRequest::OrHash,
                    Knockapi::InlineObjectRequest::OrHash
                  )
                ),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              recipient:
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest::OrHash,
                  Knockapi::InlineObjectRequest::OrHash
                ),
              repeats: T::Array[Knockapi::ScheduleRepeatRule::OrHash],
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knockapi::TenantRequest::OrHash))
            ).returns(T.attached_class)
          end
          def self.new(
            # The key of the workflow.
            workflow:,
            # Specifies a recipient in a request. This can either be a user identifier
            # (string), an inline user request (object), or an inline object request, which is
            # determined by the presence of a `collection` property.
            actor: nil,
            # An optional map of data to pass into the workflow execution. There is a 10MB
            # limit on the size of the full `data` payload. Any individual string value
            # greater than 1024 bytes in length will be
            # [truncated](/developer-tools/api-logs#log-truncation) in your logs.
            data: nil,
            # The ending date and time for the schedule.
            ending_at: nil,
            # Specifies a recipient in a request. This can either be a user identifier
            # (string), an inline user request (object), or an inline object request, which is
            # determined by the presence of a `collection` property.
            recipient: nil,
            # The repeat rule for the schedule.
            repeats: nil,
            # The starting date and time for the schedule.
            scheduled_at: nil,
            # An request to set a tenant inline.
            tenant: nil
          )
          end

          sig do
            override.returns(
              {
                workflow: String,
                actor:
                  T.nilable(
                    T.any(
                      String,
                      Knockapi::InlineIdentifyUserRequest,
                      Knockapi::InlineObjectRequest
                    )
                  ),
                data: T.nilable(T::Hash[Symbol, T.anything]),
                ending_at: T.nilable(Time),
                recipient:
                  T.any(
                    String,
                    Knockapi::InlineIdentifyUserRequest,
                    Knockapi::InlineObjectRequest
                  ),
                repeats: T::Array[Knockapi::ScheduleRepeatRule],
                scheduled_at: T.nilable(Time),
                tenant: T.nilable(T.any(String, Knockapi::TenantRequest))
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
