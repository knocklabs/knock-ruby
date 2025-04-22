# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      class Bulk
        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
