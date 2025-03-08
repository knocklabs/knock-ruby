# typed: strong

module Knock
  module Models
    module Users
      class BulkDeleteParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[String]) }
        def user_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def user_ids=(_)
        end

        sig do
          params(
            user_ids: T::Array[String],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(user_ids:, request_options: {})
        end

        sig { override.returns({user_ids: T::Array[String], request_options: Knock::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
