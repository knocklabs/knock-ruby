# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The IDs of the objects to delete
        sig { returns(T::Array[String]) }
        attr_accessor :object_ids

        sig do
          params(
            object_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(object_ids:, request_options: {})
        end

        sig { override.returns({object_ids: T::Array[String], request_options: Knockapi::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
