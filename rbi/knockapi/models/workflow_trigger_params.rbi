# typed: strong

module Knockapi
  module Models
    class WorkflowTriggerParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::WorkflowTriggerParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :key

      # The recipients to trigger the workflow for. Can inline identify users, objects,
      # or use a list of user IDs. Limited to 1,000 recipients.
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

      # A key that is used to reference a specific workflow trigger request when issuing
      # a [workflow cancellation](/send-notifications/canceling-workflows) request. Must
      # be provided while triggering a workflow in order to enable subsequent
      # cancellation. Should be unique across trigger requests to avoid unintentional
      # cancellations.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_key

      # An optional map of data to pass into the workflow execution. There is a 10MB
      # limit on the size of the full `data` payload. Any individual string value
      # greater than 1024 bytes in length will be
      # [truncated](/developer-tools/api-logs#log-truncation) in your logs.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # Optional settings that control how this workflow trigger is executed.
      sig { returns(T.nilable(Knockapi::WorkflowTriggerParams::Settings)) }
      attr_reader :settings

      sig do
        params(
          settings: T.nilable(Knockapi::WorkflowTriggerParams::Settings::OrHash)
        ).void
      end
      attr_writer :settings

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::TenantRequest))) }
      attr_accessor :tenant

      sig do
        params(
          key: String,
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::InlineIdentifyUserRequest::OrHash,
                Knockapi::InlineObjectRequest::OrHash
              )
            ],
          actor:
            T.nilable(
              T.any(
                String,
                Knockapi::InlineIdentifyUserRequest::OrHash,
                Knockapi::InlineObjectRequest::OrHash
              )
            ),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          settings:
            T.nilable(Knockapi::WorkflowTriggerParams::Settings::OrHash),
          tenant: T.nilable(T.any(String, Knockapi::TenantRequest::OrHash)),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        key:,
        # The recipients to trigger the workflow for. Can inline identify users, objects,
        # or use a list of user IDs. Limited to 1,000 recipients.
        recipients:,
        # Specifies a recipient in a request. This can either be a user identifier
        # (string), an inline user request (object), or an inline object request, which is
        # determined by the presence of a `collection` property.
        actor: nil,
        # A key that is used to reference a specific workflow trigger request when issuing
        # a [workflow cancellation](/send-notifications/canceling-workflows) request. Must
        # be provided while triggering a workflow in order to enable subsequent
        # cancellation. Should be unique across trigger requests to avoid unintentional
        # cancellations.
        cancellation_key: nil,
        # An optional map of data to pass into the workflow execution. There is a 10MB
        # limit on the size of the full `data` payload. Any individual string value
        # greater than 1024 bytes in length will be
        # [truncated](/developer-tools/api-logs#log-truncation) in your logs.
        data: nil,
        # Optional settings that control how this workflow trigger is executed.
        settings: nil,
        # An request to set a tenant inline.
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            recipients:
              T::Array[
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest,
                  Knockapi::InlineObjectRequest
                )
              ],
            actor:
              T.nilable(
                T.any(
                  String,
                  Knockapi::InlineIdentifyUserRequest,
                  Knockapi::InlineObjectRequest
                )
              ),
            cancellation_key: T.nilable(String),
            data: T.nilable(T::Hash[Symbol, T.anything]),
            settings: T.nilable(Knockapi::WorkflowTriggerParams::Settings),
            tenant: T.nilable(T.any(String, Knockapi::TenantRequest)),
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Settings < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::WorkflowTriggerParams::Settings,
              Knockapi::Internal::AnyHash
            )
          end

        # When set to true, overrides the sandbox mode for all channels in this workflow
        # run, messages are not delivered to the underlying providers. If false or not
        # set, the workflow delivers messages normally.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :sandbox_mode

        # When set to true, skips all delay steps in the workflow for this trigger
        # request. If false or not set, delay steps execute normally.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :skip_delay

        # Optional settings that control how this workflow trigger is executed.
        sig do
          params(
            sandbox_mode: T.nilable(T::Boolean),
            skip_delay: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # When set to true, overrides the sandbox mode for all channels in this workflow
          # run, messages are not delivered to the underlying providers. If false or not
          # set, the workflow delivers messages normally.
          sandbox_mode: nil,
          # When set to true, skips all delay steps in the workflow for this trigger
          # request. If false or not set, delay steps execute normally.
          skip_delay: nil
        )
        end

        sig do
          override.returns(
            {
              sandbox_mode: T.nilable(T::Boolean),
              skip_delay: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
