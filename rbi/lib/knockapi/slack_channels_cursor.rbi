# typed: strong

module Knockapi
  class SlackChannelsCursor
    include Knockapi::BasePage

    Elem = type_member

    sig { returns(String) }
    def next_cursor
    end

    sig { params(_: String).returns(String) }
    def next_cursor=(_)
    end

    sig { returns(T.nilable(T::Array[Elem])) }
    def slack_channels
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def slack_channels=(_)
    end
  end
end
