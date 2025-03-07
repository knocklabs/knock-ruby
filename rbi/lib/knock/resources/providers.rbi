# typed: strong

module Knock
  module Resources
    class Providers
      sig { returns(Knock::Resources::Providers::Slack) }
      def slack
      end

      sig { returns(Knock::Resources::Providers::MsTeams) }
      def ms_teams
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
