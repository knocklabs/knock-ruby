# typed: strong

module Knockapi
  module Resources
    class BulkOperations
      # Retrieves a bulk operation (if it exists) and displays the current state of it.
      sig { params(id: String, request_options: Knockapi::RequestOpts).returns(Knockapi::Models::BulkOperation) }
      def get(
        # The ID of the bulk operation to retrieve.
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
