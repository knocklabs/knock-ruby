# typed: strong

module Knock
  module Resources
    class Users
      class Feeds
        sig do
          params(
            id: String,
            user_id: String,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Users::FeedGetSettingsResponse)
        end
        def get_settings(id, user_id:, request_options: {})
        end

        sig do
          params(
            id: String,
            user_id: String,
            after: String,
            archived: Symbol,
            before: String,
            has_tenant: T::Boolean,
            page_size: Integer,
            source: String,
            status: Symbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::EntriesCursor[Knock::Models::Users::FeedListItemsResponse])
        end
        def list_items(
          id,
          user_id:,
          after: nil,
          archived: nil,
          before: nil,
          has_tenant: nil,
          page_size: nil,
          source: nil,
          status: nil,
          tenant: nil,
          trigger_data: nil,
          workflow_categories: nil,
          request_options: {}
        )
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
