# typed: strong

module Knock
  module Resources
    class Channels
      sig { returns(Knock::Resources::Channels::Bulk) }
      def bulk
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
