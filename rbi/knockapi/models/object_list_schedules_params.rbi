# typed: strong

module Knockapi
  module Models
    class ObjectListSchedulesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::ObjectListSchedulesParams,
            Knockapi::Internal::AnyHash
          )
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

      # The number of items per page (defaults to 50).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter schedules by tenant id.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # Filter schedules by workflow id.
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
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        # Filter schedules by tenant id.
        tenant: nil,
        # Filter schedules by workflow id.
        workflow: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
