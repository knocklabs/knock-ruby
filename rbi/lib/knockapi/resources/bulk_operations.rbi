# typed: strong

module Knockapi
  module Resources
    class BulkOperations
      # Retrieves a bulk operation (if it exists) and displays the current state of it.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::BulkOperation)
      end
      def get(
        # The ID of the bulk operation to retrieve
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
