# typed: strong

module Knockapi
  module Models
    class ObjectListSchedulesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # The ID of the tenant to list schedules for
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # The ID of the workflow to list schedules for
      sig { returns(T.nilable(String)) }
      attr_reader :workflow

      sig { params(workflow: String).void }
      attr_writer :workflow

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          tenant: String,
          workflow: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              page_size: Integer,
              tenant: String,
              workflow: String,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
