# typed: strong

module Knockapi
  module Internal
    class SlackChannelsCursor
      include Knockapi::Internal::Type::BasePage

      Elem = type_member

      sig { returns(String) }
      attr_accessor :next_cursor

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :slack_channels

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
