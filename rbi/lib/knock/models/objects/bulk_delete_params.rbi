# typed: strong

module Knock
  module Models
    module Objects
      class BulkDeleteParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[String]) }
        def object_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def object_ids=(_)
        end

        sig do
          params(
            object_ids: T::Array[String],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(object_ids:, request_options: {})
        end

        sig { override.returns({object_ids: T::Array[String], request_options: Knock::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
