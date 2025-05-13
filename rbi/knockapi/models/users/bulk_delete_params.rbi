# typed: strong

module Knockapi
  module Models
    module Users
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::BulkDeleteParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of user IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            user_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of user IDs.
          user_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_ids: T::Array[String],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
