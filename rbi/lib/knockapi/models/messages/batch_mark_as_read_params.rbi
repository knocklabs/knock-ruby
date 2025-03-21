# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMarkAsReadParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[String]) }
        def message_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def message_ids=(_)
        end

        sig do
          params(
            message_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(message_ids:, request_options: {})
        end

        sig { override.returns({message_ids: T::Array[String], request_options: Knockapi::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
