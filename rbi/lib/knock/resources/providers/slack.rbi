# typed: strong

module Knock
  module Resources
    class Providers
      class Slack
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Providers::SlackCheckAuthResponse)
        end
        def check_auth(channel_id, access_token_object:, request_options: {})
        end

        sig do
          params(
            channel_id: String,
            access_token_object: String,
            query_options: Knock::Models::Providers::SlackListChannelsParams::QueryOptions,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Providers::SlackListChannelsResponse)
        end
        def list_channels(channel_id, access_token_object:, query_options: nil, request_options: {})
        end

        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(String)
        end
        def revoke_access(channel_id, access_token_object:, request_options: {})
        end

        sig { params(client: Knock::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
