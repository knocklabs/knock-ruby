# typed: strong

module Knockapi
  module Models
    class BulkOperation < Knockapi::Internal::Type::BaseModel
      # Unique identifier for the bulk operation.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The estimated total number of rows to process.
      sig { returns(Integer) }
      attr_accessor :estimated_total_rows

      # Timestamp when the resource was created.
      sig { returns(Time) }
      attr_accessor :inserted_at

      # The name of the bulk operation.
      sig { returns(String) }
      attr_accessor :name

      # The number of rows processed so far.
      sig { returns(Integer) }
      attr_accessor :processed_rows

      # The status of the bulk operation.
      sig { returns(Knockapi::Models::BulkOperation::Status::TaggedSymbol) }
      attr_accessor :status

      # The number of successful operations.
      sig { returns(Integer) }
      attr_accessor :success_count

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Timestamp when the bulk operation was completed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      # The number of failed operations.
      sig { returns(T.nilable(Integer)) }
      attr_reader :error_count

      sig { params(error_count: Integer).void }
      attr_writer :error_count

      # A list of items that failed to be processed.
      sig { returns(T.nilable(T::Array[Knockapi::Models::BulkOperation::ErrorItem])) }
      attr_reader :error_items

      sig do
        params(
          error_items: T::Array[T.any(Knockapi::Models::BulkOperation::ErrorItem, Knockapi::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :error_items

      # Timestamp when the bulk operation failed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :failed_at

      # Timestamp when the bulk operation was started.
      sig { returns(T.nilable(Time)) }
      attr_accessor :started_at

      # A bulk operation entity.
      sig do
        params(
          id: String,
          _typename: String,
          estimated_total_rows: Integer,
          inserted_at: Time,
          name: String,
          processed_rows: Integer,
          status: Knockapi::Models::BulkOperation::Status::OrSymbol,
          success_count: Integer,
          updated_at: Time,
          completed_at: T.nilable(Time),
          error_count: Integer,
          error_items: T::Array[T.any(Knockapi::Models::BulkOperation::ErrorItem, Knockapi::Internal::AnyHash)],
          failed_at: T.nilable(Time),
          started_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        _typename:,
        estimated_total_rows:,
        inserted_at:,
        name:,
        processed_rows:,
        status:,
        success_count:,
        updated_at:,
        completed_at: nil,
        error_count: nil,
        error_items: nil,
        failed_at: nil,
        started_at: nil
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              estimated_total_rows: Integer,
              inserted_at: Time,
              name: String,
              processed_rows: Integer,
              status: Knockapi::Models::BulkOperation::Status::TaggedSymbol,
              success_count: Integer,
              updated_at: Time,
              completed_at: T.nilable(Time),
              error_count: Integer,
              error_items: T::Array[Knockapi::Models::BulkOperation::ErrorItem],
              failed_at: T.nilable(Time),
              started_at: T.nilable(Time)
            }
          )
      end
      def to_hash; end

      # The status of the bulk operation.
      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::BulkOperation::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Knockapi::Models::BulkOperation::Status::TaggedSymbol) }

        QUEUED = T.let(:queued, Knockapi::Models::BulkOperation::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, Knockapi::Models::BulkOperation::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, Knockapi::Models::BulkOperation::Status::TaggedSymbol)
        FAILED = T.let(:failed, Knockapi::Models::BulkOperation::Status::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::BulkOperation::Status::TaggedSymbol]) }
        def self.values; end
      end

      class ErrorItem < Knockapi::Internal::Type::BaseModel
        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The collection this object belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection

        sig { params(id: String, collection: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, collection: nil); end

        sig { override.returns({id: String, collection: T.nilable(String)}) }
        def to_hash; end
      end
    end
  end
end
