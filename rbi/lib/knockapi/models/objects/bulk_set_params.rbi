# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::BaseModel
        extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[Knockapi::Models::InlineObjectRequest]) }
        attr_accessor :objects

        sig do
          params(
            objects: T::Array[T.any(Knockapi::Models::InlineObjectRequest, Knockapi::Util::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(objects:, request_options: {})
        end

        sig do
          override
            .returns(
              {objects: T::Array[Knockapi::Models::InlineObjectRequest], request_options: Knockapi::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
