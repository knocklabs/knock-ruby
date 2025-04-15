# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchGetContentParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The IDs of the messages to fetch contents of
        sig { returns(T::Array[T.anything]) }
        attr_accessor :message_ids

        sig do
          params(
            message_ids: T::Array[T.anything],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(message_ids:, request_options: {}); end

        sig do
          override.returns({message_ids: T::Array[T.anything], request_options: Knockapi::RequestOptions})
        end
        def to_hash; end
      end
    end
  end
end
