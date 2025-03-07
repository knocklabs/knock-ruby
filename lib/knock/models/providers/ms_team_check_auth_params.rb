# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class MsTeamCheckAuthParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute ms_teams_tenant_object
        #   A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @return [String]
        required :ms_teams_tenant_object, String

        # @!parse
        #   # @param ms_teams_tenant_object [String]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(ms_teams_tenant_object:, request_options: {}, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
