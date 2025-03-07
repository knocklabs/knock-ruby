# typed: strong

module Knock
  module Resources
    class BulkOperations
      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              Knock::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
        )
          .returns(Knock::Models::BulkOperationGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
