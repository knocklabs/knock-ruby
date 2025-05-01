# frozen_string_literal: true

module Knockapi
  module Resources
    class Shared
      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
