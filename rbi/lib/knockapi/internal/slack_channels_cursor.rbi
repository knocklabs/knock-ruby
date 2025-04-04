# typed: strong

module Knockapi
  module Internal
    class SlackChannelsCursor
      Elem = type_member

      include Knockapi::Internal::Type::BasePage

      sig { returns(String) }
      attr_accessor :next_cursor

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :slack_channels

      sig { returns(String) }
      def inspect
      end
    end
  end
end
