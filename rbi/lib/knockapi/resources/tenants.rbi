# typed: strong

module Knockapi
  module Resources
    class Tenants
      sig { returns(Knockapi::Resources::Tenants::Bulk) }
      attr_reader :bulk

      # List tenants for the current environment.
      sig do
        params(
          after: String,
          before: String,
          name: String,
          page_size: Integer,
          tenant_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Tenant])
      end
      def list(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Filter tenants by name.
        name: nil,
        # The number of items per page.
        page_size: nil,
        # Filter tenants by ID.
        tenant_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
