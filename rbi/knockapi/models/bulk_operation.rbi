# typed: strong

module Knockapi
  module Models
    class BulkOperation < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::BulkOperation, Knockapi::Internal::AnyHash)
        end

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
      sig { returns(Knockapi::BulkOperation::Status::TaggedSymbol) }
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
      sig { returns(T.nilable(T::Array[Knockapi::BulkOperation::ErrorItem])) }
      attr_reader :error_items

      sig do
        params(
          error_items: T::Array[Knockapi::BulkOperation::ErrorItem::OrHash]
        ).void
      end
      attr_writer :error_items

      # Timestamp when the bulk operation failed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :failed_at

      # The URI to the bulk operation's progress.
      sig { returns(T.nilable(String)) }
      attr_reader :progress_path

      sig { params(progress_path: String).void }
      attr_writer :progress_path

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
          status: Knockapi::BulkOperation::Status::OrSymbol,
          success_count: Integer,
          updated_at: Time,
          completed_at: T.nilable(Time),
          error_count: Integer,
          error_items: T::Array[Knockapi::BulkOperation::ErrorItem::OrHash],
          failed_at: T.nilable(Time),
          progress_path: String,
          started_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the bulk operation.
        id:,
        # The typename of the schema.
        _typename:,
        # The estimated total number of rows to process.
        estimated_total_rows:,
        # Timestamp when the resource was created.
        inserted_at:,
        # The name of the bulk operation.
        name:,
        # The number of rows processed so far.
        processed_rows:,
        # The status of the bulk operation.
        status:,
        # The number of successful operations.
        success_count:,
        # The timestamp when the resource was last updated.
        updated_at:,
        # Timestamp when the bulk operation was completed.
        completed_at: nil,
        # The number of failed operations.
        error_count: nil,
        # A list of items that failed to be processed.
        error_items: nil,
        # Timestamp when the bulk operation failed.
        failed_at: nil,
        # The URI to the bulk operation's progress.
        progress_path: nil,
        # Timestamp when the bulk operation was started.
        started_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            estimated_total_rows: Integer,
            inserted_at: Time,
            name: String,
            processed_rows: Integer,
            status: Knockapi::BulkOperation::Status::TaggedSymbol,
            success_count: Integer,
            updated_at: Time,
            completed_at: T.nilable(Time),
            error_count: Integer,
            error_items: T::Array[Knockapi::BulkOperation::ErrorItem],
            failed_at: T.nilable(Time),
            progress_path: String,
            started_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # The status of the bulk operation.
      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::BulkOperation::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Knockapi::BulkOperation::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, Knockapi::BulkOperation::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, Knockapi::BulkOperation::Status::TaggedSymbol)
        FAILED = T.let(:failed, Knockapi::BulkOperation::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::BulkOperation::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ErrorItem < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::BulkOperation::ErrorItem,
              Knockapi::Internal::AnyHash
            )
          end

        # Unique identifier for the object.
        sig { returns(String) }
        attr_accessor :id

        # The collection this object belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection

        sig do
          params(id: String, collection: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the object.
          id:,
          # The collection this object belongs to.
          collection: nil
        )
        end

        sig { override.returns({ id: String, collection: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
