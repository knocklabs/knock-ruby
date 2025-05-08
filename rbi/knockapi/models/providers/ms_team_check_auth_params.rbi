# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A JSON encoded string containing the Microsoft Teams tenant object reference.
        sig { returns(String) }
        attr_accessor :ms_teams_tenant_object

        sig do
          params(
            ms_teams_tenant_object: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
