# typed: strong

module Knockapi
  module Resources
    class Providers
      sig { returns(Knockapi::Resources::Providers::Slack) }
      attr_reader :slack

      sig { returns(Knockapi::Resources::Providers::MsTeams) }
      attr_reader :ms_teams

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
