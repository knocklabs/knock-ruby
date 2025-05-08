# typed: strong

module Knockapi
  module Models
    class ObjectAddSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # The recipients of the subscription. You can subscribe up to 100 recipients to an
      # object at a time.
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

      # The custom properties associated with the subscription relationship.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :properties

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
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The recipients of the subscription. You can subscribe up to 100 recipients to an
        # object at a time.
        recipients:,
        # The custom properties associated with the subscription relationship.
        properties: nil,
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
            properties: T.nilable(T::Hash[Symbol, T.anything]),
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
