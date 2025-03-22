# typed: strong

module Knockapi
  class SlackChannelsCursor
    include Knockapi::BasePage

    Elem = type_member

    sig { returns(String) }
    attr_accessor :next_cursor

    sig { returns(T.nilable(T::Array[Elem])) }
    attr_accessor :slack_channels

    sig { returns(String) }
    def inspect
    end
  end
end
