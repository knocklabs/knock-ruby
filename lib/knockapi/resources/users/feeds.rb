# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Feeds
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
