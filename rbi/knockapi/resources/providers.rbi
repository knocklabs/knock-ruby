# typed: strong

module Knockapi
  module Resources
    class Providers
      # A provider represents a third-party service that Knock integrates with and is
      # configured via a channel.
      sig { returns(Knockapi::Resources::Providers::Slack) }
      attr_reader :slack

      # A provider represents a third-party service that Knock integrates with and is
      # configured via a channel.
      sig { returns(Knockapi::Resources::Providers::MsTeams) }
      attr_reader :ms_teams

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
