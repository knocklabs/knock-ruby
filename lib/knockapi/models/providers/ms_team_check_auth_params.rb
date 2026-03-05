# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::MsTeams#check_auth
      class MsTeamCheckAuthParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!method initialize(channel_id:, ms_teams_tenant_object:, request_options: {})
        #   @param channel_id [String]
        #
        #   @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
