# typed: strong

module Knockapi
  module Resources
    class Recipients
      sig { returns(Knockapi::Resources::Recipients::Subscriptions) }
      def subscriptions
      end

      sig { returns(Knockapi::Resources::Recipients::Preferences) }
      def preferences
      end

      sig { returns(Knockapi::Resources::Recipients::ChannelData) }
      def channel_data
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
