# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        sig { returns(T.anything) }
        attr_accessor :body

        sig do
          params(
            body: T.anything,
            request_options: T.any(
              Knockapi::RequestOptions,
              Knockapi::Internal::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(body:, request_options: {}); end

        sig { override.returns({body: T.anything, request_options: Knockapi::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
