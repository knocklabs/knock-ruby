# typed: strong

module Knockapi
  module Resources
    class Integrations
      sig { returns(Knockapi::Resources::Integrations::Census) }
      attr_reader :census

      sig { returns(Knockapi::Resources::Integrations::Hightouch) }
      attr_reader :hightouch

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
