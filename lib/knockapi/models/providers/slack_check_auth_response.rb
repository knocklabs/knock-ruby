# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#check_auth
      class SlackCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute connection
        #
        #   @return [Knockapi::Models::Providers::SlackCheckAuthResponse::Connection]
        required :connection, -> { Knockapi::Models::Providers::SlackCheckAuthResponse::Connection }

        # @!parse
        #   # The response from a Slack auth check request
        #   #
        #   # @param connection [Knockapi::Models::Providers::SlackCheckAuthResponse::Connection]
        #   #
        #   def initialize(connection:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::Providers::SlackCheckAuthResponse#connection
        class Connection < Knockapi::Internal::Type::BaseModel
          # @!attribute ok
          #
          #   @return [Boolean]
          required :ok, Knockapi::Internal::Type::BooleanModel

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!parse
          #   # @param ok [Boolean]
          #   # @param reason [String, nil]
          #   #
          #   def initialize(ok:, reason: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
