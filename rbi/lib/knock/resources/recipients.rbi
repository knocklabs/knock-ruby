# typed: strong

module Knock
  module Resources
    class Recipients
      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
