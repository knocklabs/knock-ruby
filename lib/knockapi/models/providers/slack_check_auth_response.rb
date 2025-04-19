# frozen_string_literal: true

module Knockapi
  module Models
    module Providers
      # @see Knockapi::Resources::Providers::Slack#check_auth
      class SlackCheckAuthResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute connection
        #   A Slack connection object.
        #
        #   @return [Knockapi::Models::Providers::SlackCheckAuthResponse::Connection]
        required :connection, -> { Knockapi::Models::Providers::SlackCheckAuthResponse::Connection }

        # @!method initialize(connection:)
        #   The response from a Slack auth check request.
        #
        #   @param connection [Knockapi::Models::Providers::SlackCheckAuthResponse::Connection]

        # @see Knockapi::Models::Providers::SlackCheckAuthResponse#connection
        class Connection < Knockapi::Internal::Type::BaseModel
          # @!attribute ok
          #   Whether the Slack connection is valid.
          #
          #   @return [Boolean]
          required :ok, Knockapi::Internal::Type::Boolean

          # @!attribute reason
          #   The reason for the Slack connection if it is not valid.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!method initialize(ok:, reason: nil)
          #   A Slack connection object.
          #
          #   @param ok [Boolean]
          #   @param reason [String, nil]
        end
      end
    end
  end
end
