# typed: strong

module Knock
  module Resources
    class Recipients
      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
