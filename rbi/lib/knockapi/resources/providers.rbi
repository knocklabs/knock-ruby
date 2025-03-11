# typed: strong

module Knockapi
  module Resources
    class Providers
      sig { returns(Knockapi::Resources::Providers::Slack) }
      def slack
      end

      sig { returns(Knockapi::Resources::Providers::MsTeams) }
      def ms_teams
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
