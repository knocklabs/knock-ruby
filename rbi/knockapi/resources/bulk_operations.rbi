# typed: strong

module Knockapi
  module Resources
    # A bulk operation is a set of changes applied across zero or more records
    # triggered via a call to the Knock API and performed asynchronously.
    class BulkOperations
      # Retrieves a bulk operation (if it exists) and displays the current state of it.
      sig do
        params(
          id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::BulkOperation)
      end
      def get(
        # The ID of the bulk operation to retrieve.
        id,
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
