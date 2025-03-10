# typed: strong

module Knock
  class SlackChannelsCursor
    include Knock::BasePage

    Elem = type_member

    sig { returns(String) }
    def next_cursor
    end

    sig { params(_: String).returns(String) }
    def next_cursor=(_)
    end

    sig { returns(T::Array[Elem]) }
    def slack_channels
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def slack_channels=(_)
    end

    sig do
      params(
        client: Knock::BaseClient,
        req: Knock::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        page_data: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, page_data:)
    end
  end
end
