# typed: strong

module Knock
  module Models
    module Objects
      class BulkSetParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[Knock::Models::InlineObjectRequest]) }
        def objects
        end

        sig do
          params(_: T::Array[Knock::Models::InlineObjectRequest])
            .returns(T::Array[Knock::Models::InlineObjectRequest])
        end
        def objects=(_)
        end

        sig do
          params(
            objects: T::Array[Knock::Models::InlineObjectRequest],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(objects:, request_options: {})
        end

        sig do
          override
            .returns({objects: T::Array[Knock::Models::InlineObjectRequest], request_options: Knock::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
