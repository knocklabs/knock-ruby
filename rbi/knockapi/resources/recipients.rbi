# typed: strong

module Knockapi
  module Resources
    class Recipients
      sig { returns(Knockapi::Resources::Recipients::Subscriptions) }
      attr_reader :subscriptions

      sig { returns(Knockapi::Resources::Recipients::Preferences) }
      attr_reader :preferences

      sig { returns(Knockapi::Resources::Recipients::ChannelData) }
      attr_reader :channel_data

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
