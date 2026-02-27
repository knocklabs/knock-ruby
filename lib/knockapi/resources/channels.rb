# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      # A bulk operation is a set of changes applied across zero or more records
      # triggered via a call to the Knock API and performed asynchronously.
      # @return [Knockapi::Resources::Channels::Bulk]
      attr_reader :bulk

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Channels::Bulk.new(client: client)
      end
    end
  end
end
