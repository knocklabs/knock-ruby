# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamRevokeAccessParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Providers::MsTeamRevokeAccessParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :channel_id

        # A JSON encoded string containing the Microsoft Teams tenant object reference.
        sig { returns(String) }
        attr_accessor :ms_teams_tenant_object

        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          channel_id:,
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              channel_id: String,
              ms_teams_tenant_object: String,
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
