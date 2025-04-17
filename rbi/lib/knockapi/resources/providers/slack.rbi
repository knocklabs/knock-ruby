# typed: strong

module Knockapi
  module Resources
    class Providers
      class Slack
        # Check if a Slack channel is authenticated.
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Providers::SlackCheckAuthResponse)
        end
        def check_auth(
          # The ID of the Knock Slack channel to check.
          channel_id,
          # A JSON encoded string containing the access token object reference.
          access_token_object:,
          request_options: {}
        ); end
        # List Slack channels for a Slack workspace.
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            query_options: T.any(Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions, Knockapi::Internal::AnyHash),
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Internal::SlackChannelsCursor[Knockapi::Models::Providers::SlackListChannelsResponse])
        end
        def list_channels(
          # The ID of the Knock Slack channel to get channels for.
          channel_id,
          # A JSON encoded string containing the access token object reference.
          access_token_object:,
          query_options: nil,
          request_options: {}
        ); end
        # Revoke access for a Slack channel.
        sig do
          params(
            channel_id: String,
            access_token_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(String)
        end
        def revoke_access(
          # The ID of the Knock Slack channel to revoke access for.
          channel_id,
          # A JSON encoded string containing the access token object reference.
          access_token_object:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
