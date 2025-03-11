# typed: strong

module Knockapi
  module Models
    class BulkOperation < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(Integer) }
      def estimated_total_rows
      end

      sig { params(_: Integer).returns(Integer) }
      def estimated_total_rows=(_)
      end

      sig { returns(Time) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Integer) }
      def processed_rows
      end

      sig { params(_: Integer).returns(Integer) }
      def processed_rows=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Integer) }
      def success_count
      end

      sig { params(_: Integer).returns(Integer) }
      def success_count=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def completed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def completed_at=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def error_count
      end

      sig { params(_: Integer).returns(Integer) }
      def error_count=(_)
      end

      sig { returns(T.nilable(T::Array[Knockapi::Models::BulkOperation::ErrorItem])) }
      def error_items
      end

      sig do
        params(_: T::Array[Knockapi::Models::BulkOperation::ErrorItem])
          .returns(T::Array[Knockapi::Models::BulkOperation::ErrorItem])
      end
      def error_items=(_)
      end

      sig { returns(T.nilable(Time)) }
      def failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def failed_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def started_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def started_at=(_)
      end

      sig do
        params(
          id: String,
          _typename: String,
          estimated_total_rows: Integer,
          inserted_at: Time,
          name: String,
          processed_rows: Integer,
          status: Symbol,
          success_count: Integer,
          updated_at: Time,
          completed_at: T.nilable(Time),
          error_count: Integer,
          error_items: T::Array[Knockapi::Models::BulkOperation::ErrorItem],
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
      )
      end

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
              status: Symbol,
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
      def to_hash
      end

      class Status < Knockapi::Enum
        abstract!

        QUEUED = :queued
        PROCESSING = :processing
        COMPLETED = :completed
        FAILED = :failed

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ErrorItem < Knockapi::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def collection
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def collection=(_)
        end

        sig { params(id: String, collection: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, collection: nil)
        end

        sig { override.returns({id: String, collection: T.nilable(String)}) }
        def to_hash
        end
      end
    end
  end
end
