# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthParams < Knockapi::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A JSON encoded string containing the Microsoft Teams tenant object reference
        sig { returns(String) }
        attr_accessor :ms_teams_tenant_object

        sig do
          params(
            ms_teams_tenant_object: String,
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_tenant_object:, request_options: {})
        end

        sig { override.returns({ms_teams_tenant_object: String, request_options: Knockapi::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
