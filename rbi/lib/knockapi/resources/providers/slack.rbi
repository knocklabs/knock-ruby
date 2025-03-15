# typed: strong

module Knockapi
  module Resources
    class Providers
      class Slack
        # Check if a Slack channel is authenticated
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Providers::SlackCheckAuthResponse)
        end
        def check_auth(channel_id, access_token_object:, request_options: {})
        end

        # List Slack channels for a Slack workspace
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            query_options: Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::SlackChannelsCursor[Knockapi::Models::Providers::SlackListChannelsResponse])
        end
        def list_channels(channel_id, access_token_object:, query_options: nil, request_options: {})
        end

        # Revoke access for a Slack channel
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(String)
        end
        def revoke_access(channel_id, access_token_object:, request_options: {})
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
