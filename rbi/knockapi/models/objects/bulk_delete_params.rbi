# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Objects::BulkDeleteParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :collection

        # List of object IDs to delete.
        sig { returns(T::Array[String]) }
        attr_accessor :object_ids

        sig do
          params(
            collection: String,
            object_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          collection:,
          # List of object IDs to delete.
          object_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              collection: String,
              object_ids: T::Array[String],
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
