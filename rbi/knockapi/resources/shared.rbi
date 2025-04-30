# typed: strong

module Knockapi
  module Resources
    class Shared
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
