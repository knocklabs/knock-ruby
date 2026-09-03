# typed: strong

module Knockapi
  module Models
    module Messages
      class BatchMarkAsReadParams < Knockapi::Models::Messages::BatchMessagesStatusRequest
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Messages::BatchMarkAsReadParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Knockapi::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Knockapi::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
