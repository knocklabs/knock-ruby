# typed: strong

module Knockapi
  module Models
    class TenantListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::TenantListParams, Knockapi::Internal::AnyHash)
        end

      # The cursor to fetch entries after.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter tenants by name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The number of items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter tenants by ID.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant_id

      sig { params(tenant_id: String).void }
      attr_writer :tenant_id

      sig do
        params(
          after: String,
          before: String,
          name: String,
          page_size: Integer,
          tenant_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            name: String,
            page_size: Integer,
            tenant_id: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
