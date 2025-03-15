# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamCheckAuthParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # A JSON encoded string containing the Microsoft Teams tenant object reference
        sig { returns(String) }
        def ms_teams_tenant_object
        end

        sig { params(_: String).returns(String) }
        def ms_teams_tenant_object=(_)
        end

        sig do
          params(
            ms_teams_tenant_object: String,
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
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
