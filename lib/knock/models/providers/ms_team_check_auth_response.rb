# frozen_string_literal: true

module Knock
  module Models
    module Providers
      class MsTeamCheckAuthResponse < Knock::BaseModel
        # @!attribute connection
        #
        #   @return [Knock::Models::Providers::MsTeamCheckAuthResponse::Connection]
        required :connection, -> { Knock::Models::Providers::MsTeamCheckAuthResponse::Connection }

        # @!parse
        #   # The response from a Microsoft Teams auth check request
        #   #
        #   # @param connection [Knock::Models::Providers::MsTeamCheckAuthResponse::Connection]
        #   #
        #   def initialize(connection:, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void

        class Connection < Knock::BaseModel
          # @!attribute ok
          #
          #   @return [Boolean]
          required :ok, Knock::BooleanModel

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!parse
          #   # @param ok [Boolean]
          #   # @param reason [String, nil]
          #   #
          #   def initialize(ok:, reason: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
