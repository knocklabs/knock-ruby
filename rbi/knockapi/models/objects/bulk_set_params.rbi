# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A list of objects.
        sig { returns(T::Array[Knockapi::InlineObjectRequest]) }
        attr_accessor :objects

        sig do
          params(
            objects: T::Array[Knockapi::InlineObjectRequest::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of objects.
          objects:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              objects: T::Array[Knockapi::InlineObjectRequest],
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
