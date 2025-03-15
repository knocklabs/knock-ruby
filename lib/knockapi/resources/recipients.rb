# frozen_string_literal: true

module Knockapi
  module Resources
    class Recipients
      # @return [Knockapi::Resources::Recipients::Subscriptions]
      attr_reader :subscriptions

      # @return [Knockapi::Resources::Recipients::Preferences]
      attr_reader :preferences

      # @return [Knockapi::Resources::Recipients::ChannelData]
      attr_reader :channel_data

      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Knockapi::Resources::Recipients::Subscriptions.new(client: client)
        @preferences = Knockapi::Resources::Recipients::Preferences.new(client: client)
        @channel_data = Knockapi::Resources::Recipients::ChannelData.new(client: client)
      end
    end
  end
end
