# typed: strong

module Knockapi
  module Models
    class WorkflowTriggerParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Specifies a recipient in a request. This can either be a user identifier
      #   (string), an inline user request (object), or an inline object request, which is
      #   determined by the presence of a `collection` property.
      sig do
        returns(
          T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          )
        )
      end
      def actor
      end

      sig do
        params(
          _: T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          )
        )
          .returns(
            T.nilable(
              T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
            )
          )
      end
      def actor=(_)
      end

      # An optional key that is used in the workflow cancellation endpoint to target a
      #   cancellation of any workflow runs associated with this trigger.
      sig { returns(T.nilable(String)) }
      def cancellation_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def cancellation_key=(_)
      end

      # An optional map of data to be used in the workflow. This data will be available
      #   to the workflow as a map in the `data` field.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      # The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
      #   single trigger.
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
          )
        )
      end
      def recipients
      end

      sig do
        params(
          _: T::Array[
          T.any(
            String,
            Knockapi::Models::InlineIdentifyUserRequest,
            Knockapi::Util::AnyHash,
            Knockapi::Models::InlineObjectRequest
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Util::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
            ]
          )
      end
      def recipients=(_)
      end

      # An inline tenant request
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      def tenant
      end

      sig do
        params(_: T.nilable(T.any(String, Knockapi::Models::TenantRequest)))
          .returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest)))
      end
      def tenant=(_)
      end

      sig do
        params(
          actor: T.nilable(
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Util::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ),
          cancellation_key: T.nilable(String),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          recipients: T::Array[
          T.any(
            String,
            Knockapi::Models::InlineIdentifyUserRequest,
            Knockapi::Util::AnyHash,
            Knockapi::Models::InlineObjectRequest
          )
          ],
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Util::AnyHash)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(actor: nil, cancellation_key: nil, data: nil, recipients: nil, tenant: nil, request_options: {})
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
      def to_hash
      end
    end
  end
end
