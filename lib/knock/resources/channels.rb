# frozen_string_literal: true

module Knock
  module Resources
    class Channels
      # @return [Knock::Resources::Channels::Bulk]
      attr_reader :bulk

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
        @bulk = Knock::Resources::Channels::Bulk.new(client: client)
      end
    end
  end
end
