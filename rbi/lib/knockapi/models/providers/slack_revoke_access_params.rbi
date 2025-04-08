# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackRevokeAccessParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A JSON encoded string containing the access token object reference
        sig { returns(String) }
        attr_accessor :access_token_object

        sig do
          params(
            access_token_object: String,
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(access_token_object:, request_options: {}); end

        sig { override.returns({access_token_object: String, request_options: Knockapi::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
