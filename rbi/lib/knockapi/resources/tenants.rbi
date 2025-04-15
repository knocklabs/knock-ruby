# typed: strong

module Knockapi
  module Resources
    class Tenants
      sig { returns(Knockapi::Resources::Tenants::Bulk) }
      attr_reader :bulk

      # List tenants
      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Tenant])
      end
      def list(
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
