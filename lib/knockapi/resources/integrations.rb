# frozen_string_literal: true

module Knockapi
  module Resources
    class Integrations
      # @return [Knockapi::Resources::Integrations::Census]
      attr_reader :census

      # @return [Knockapi::Resources::Integrations::Hightouch]
      attr_reader :hightouch

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @census = Knockapi::Resources::Integrations::Census.new(client: client)
        @hightouch = Knockapi::Resources::Integrations::Hightouch.new(client: client)
      end
    end
  end
end
