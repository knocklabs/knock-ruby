# typed: strong

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel
        sig do
          params(
            channel_id: String,
            action: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def update_message_status(
          # The ID of the channel to update messages for
          channel_id,
          # The action to perform on the messages
          action,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
