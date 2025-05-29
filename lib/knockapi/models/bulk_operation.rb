# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::BulkOperations#get
    class BulkOperation < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the bulk operation.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute estimated_total_rows
      #   The estimated total number of rows to process.
      #
      #   @return [Integer]
      required :estimated_total_rows, Integer

      # @!attribute inserted_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute name
      #   The name of the bulk operation.
      #
      #   @return [String]
      required :name, String

      # @!attribute processed_rows
      #   The number of rows processed so far.
      #
      #   @return [Integer]
      required :processed_rows, Integer

      # @!attribute status
      #   The status of the bulk operation.
      #
      #   @return [Symbol, Knockapi::Models::BulkOperation::Status]
      required :status, enum: -> { Knockapi::BulkOperation::Status }

      # @!attribute success_count
      #   The number of successful operations.
      #
      #   @return [Integer]
      required :success_count, Integer

      # @!attribute updated_at
      #   The timestamp when the resource was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute completed_at
      #   Timestamp when the bulk operation was completed.
      #
      #   @return [Time, nil]
      optional :completed_at, Time, nil?: true

      # @!attribute error_count
      #   The number of failed operations.
      #
      #   @return [Integer, nil]
      optional :error_count, Integer

      # @!attribute error_items
      #   A list of items that failed to be processed.
      #
      #   @return [Array<Knockapi::Models::BulkOperation::ErrorItem>, nil]
      optional :error_items, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::BulkOperation::ErrorItem] }

      # @!attribute failed_at
      #   Timestamp when the bulk operation failed.
      #
      #   @return [Time, nil]
      optional :failed_at, Time, nil?: true

      # @!attribute progress_path
      #   The URI to the bulk operation's progress.
      #
      #   @return [String, nil]
      optional :progress_path, String

      # @!attribute started_at
      #   Timestamp when the bulk operation was started.
      #
      #   @return [Time, nil]
      optional :started_at, Time, nil?: true

      # @!method initialize(id:, _typename:, estimated_total_rows:, inserted_at:, name:, processed_rows:, status:, success_count:, updated_at:, completed_at: nil, error_count: nil, error_items: nil, failed_at: nil, progress_path: nil, started_at: nil)
      #   A bulk operation entity.
      #
      #   @param id [String] Unique identifier for the bulk operation.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param estimated_total_rows [Integer] The estimated total number of rows to process.
      #
      #   @param inserted_at [Time] Timestamp when the resource was created.
      #
      #   @param name [String] The name of the bulk operation.
      #
      #   @param processed_rows [Integer] The number of rows processed so far.
      #
      #   @param status [Symbol, Knockapi::Models::BulkOperation::Status] The status of the bulk operation.
      #
      #   @param success_count [Integer] The number of successful operations.
      #
      #   @param updated_at [Time] The timestamp when the resource was last updated.
      #
      #   @param completed_at [Time, nil] Timestamp when the bulk operation was completed.
      #
      #   @param error_count [Integer] The number of failed operations.
      #
      #   @param error_items [Array<Knockapi::Models::BulkOperation::ErrorItem>] A list of items that failed to be processed.
      #
      #   @param failed_at [Time, nil] Timestamp when the bulk operation failed.
      #
      #   @param progress_path [String] The URI to the bulk operation's progress.
      #
      #   @param started_at [Time, nil] Timestamp when the bulk operation was started.

      # The status of the bulk operation.
      #
      # @see Knockapi::Models::BulkOperation#status
      module Status
        extend Knockapi::Internal::Type::Enum

        QUEUED = :queued
        PROCESSING = :processing
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ErrorItem < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute collection
        #   The collection this object belongs to.
        #
        #   @return [String, nil]
        optional :collection, String, nil?: true

        # @!method initialize(id:, collection: nil)
        #   @param id [String] Unique identifier for the object.
        #
        #   @param collection [String, nil] The collection this object belongs to.
      end
    end
  end
end
