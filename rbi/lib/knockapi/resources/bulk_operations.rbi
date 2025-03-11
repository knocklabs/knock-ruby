# typed: strong

module Knockapi
  module Resources
    class BulkOperations
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::BulkOperation)
      end
      def get(id, request_options: {})
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
