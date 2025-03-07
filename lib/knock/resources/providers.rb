# frozen_string_literal: true

module Knock
  module Resources
    class Providers
      # @return [Knock::Resources::Providers::Slack]
      attr_reader :slack

      # @return [Knock::Resources::Providers::MsTeams]
      attr_reader :ms_teams

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
        @slack = Knock::Resources::Providers::Slack.new(client: client)
        @ms_teams = Knock::Resources::Providers::MsTeams.new(client: client)
      end
    end
  end
end
