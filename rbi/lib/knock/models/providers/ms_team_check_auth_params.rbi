# typed: strong

module Knock
  module Models
    module Providers
      class MsTeamCheckAuthParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(String) }
        def ms_teams_tenant_object
        end

        sig { params(_: String).returns(String) }
        def ms_teams_tenant_object=(_)
        end

        sig do
          params(
            ms_teams_tenant_object: String,
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(ms_teams_tenant_object:, request_options: {})
        end

        sig { override.returns({ms_teams_tenant_object: String, request_options: Knock::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
