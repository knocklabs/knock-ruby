# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackRevokeAccessParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Providers::SlackRevokeAccessParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A JSON encoded string containing the access token object reference.
        sig { returns(String) }
        attr_accessor :access_token_object

        sig do
          params(
            access_token_object: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON encoded string containing the access token object reference.
          access_token_object:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              access_token_object: String,
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
