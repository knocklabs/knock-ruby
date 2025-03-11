# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkDeleteParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[String]) }
        def object_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def object_ids=(_)
        end

        sig do
          params(
            object_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
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
