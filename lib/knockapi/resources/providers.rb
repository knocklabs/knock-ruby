# frozen_string_literal: true

module Knockapi
  module Resources
    class Providers
      # @return [Knockapi::Resources::Providers::Slack]
      attr_reader :slack

      # @return [Knockapi::Resources::Providers::MsTeams]
      attr_reader :ms_teams

      # @param client [Knockapi::Client]
      #
      def initialize(client:)
        @client = client
        @slack = Knockapi::Resources::Providers::Slack.new(client: client)
        @ms_teams = Knockapi::Resources::Providers::MsTeams.new(client: client)
      end
    end
  end
end
