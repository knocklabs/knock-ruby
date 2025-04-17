# typed: strong

module Knockapi
  module Models
    class WorkflowTriggerParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

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

      # The cancellation key provided during the initial notify call. If used in a
      # cancel request, will cancel the notification for the recipients specified in the
      # cancel request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_key

      # An optional map of data to pass into the workflow execution.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
      # single trigger.
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
          )
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ]
        )
          .void
      end
      attr_writer :recipients

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      attr_accessor :tenant

      sig do
        params(
          actor: T.nilable(
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        actor: nil,
        cancellation_key: nil,
        data: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              actor: T.nilable(
                T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
              ),
              cancellation_key: T.nilable(String),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
              tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
