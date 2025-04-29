# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A list of objects.
        sig { returns(T::Array[Knockapi::Models::InlineObjectRequest]) }
        attr_accessor :objects

        sig do
          params(
            objects: T::Array[T.any(Knockapi::Models::InlineObjectRequest, Knockapi::Internal::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A list of objects.
          objects:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {objects: T::Array[Knockapi::Models::InlineObjectRequest], request_options: Knockapi::RequestOptions}
            )
        end
        def to_hash; end
      end
    end
  end
end
