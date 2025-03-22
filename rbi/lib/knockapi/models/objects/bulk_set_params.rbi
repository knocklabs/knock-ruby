# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[Knockapi::Models::InlineObjectRequest]) }
        def objects
        end

        sig do
          params(_: T::Array[Knockapi::Models::InlineObjectRequest])
            .returns(T::Array[Knockapi::Models::InlineObjectRequest])
        end
        def objects=(_)
        end

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
