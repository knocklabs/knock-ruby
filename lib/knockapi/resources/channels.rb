# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      # @return [Knockapi::Resources::Channels::Bulk]
      attr_reader :bulk

      # @param client [Knockapi::Client]
      #
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Channels::Bulk.new(client: client)
      end
    end
  end
end
