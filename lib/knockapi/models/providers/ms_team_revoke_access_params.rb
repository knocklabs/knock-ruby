# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#revoke_access
      class MsTeamRevokeAccessParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!method initialize(ms_teams_tenant_object:, request_options: {})
        #   @param ms_teams_tenant_object [String]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
