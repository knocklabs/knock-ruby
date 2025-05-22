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

      # An optional key that is used to reference a specific workflow trigger request
      # when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
      # request. Must be provided while triggering a workflow in order to enable
      # subsequent cancellation. Should be unique across trigger requests to avoid
      # unintentional cancellations.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_key

      # An optional map of data to pass into the workflow execution. There is a 1024
      # byte limit on the size of any single string value (with the exception of
      # [email attachments](/integrations/email/attachments)), and a 10MB limit on the
      # size of the full `data` payload.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

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
          tenant: T.nilable(T.any(String, Knockapi::TenantRequest::OrHash)),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The recipients to trigger the workflow for. Can inline identify users, objects,
        # or use a list of user IDs. Limited to 1,000 recipients.
        recipients:,
        # Specifies a recipient in a request. This can either be a user identifier
        # (string), an inline user request (object), or an inline object request, which is
        # determined by the presence of a `collection` property.
        actor: nil,
        # An optional key that is used to reference a specific workflow trigger request
        # when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
        # request. Must be provided while triggering a workflow in order to enable
        # subsequent cancellation. Should be unique across trigger requests to avoid
        # unintentional cancellations.
        cancellation_key: nil,
        # An optional map of data to pass into the workflow execution. There is a 1024
        # byte limit on the size of any single string value (with the exception of
        # [email attachments](/integrations/email/attachments)), and a 10MB limit on the
        # size of the full `data` payload.
        data: nil,
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
