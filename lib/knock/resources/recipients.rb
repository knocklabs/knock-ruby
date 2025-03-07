# frozen_string_literal: true

module Knock
  module Resources
    class Recipients
      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
