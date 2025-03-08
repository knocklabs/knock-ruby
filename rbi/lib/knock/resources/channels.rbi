# typed: strong

module Knock
  module Resources
    class Channels
      sig { returns(Knock::Resources::Channels::Bulk) }
      def bulk
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
