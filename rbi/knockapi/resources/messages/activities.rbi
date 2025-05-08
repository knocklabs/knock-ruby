# typed: strong

module Knockapi
  module Resources
    class Messages
      class Activities
        # Returns a paginated list of activities for the specified message.
        sig do
          params(
            message_id: String,
            after: String,
            before: String,
            page_size: Integer,
            trigger_data: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Internal::ItemsCursor[Knockapi::Activity])
        end
        def list(
          # The ID of the message to fetch activities for.
          message_id,
          # The cursor to fetch entries after.
          after: nil,
          # The cursor to fetch entries before.
          before: nil,
          # The number of items per page.
          page_size: nil,
          # The trigger data to filter activities by.
          trigger_data: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
