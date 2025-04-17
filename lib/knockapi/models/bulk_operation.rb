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
      required :status, enum: -> { Knockapi::Models::BulkOperation::Status }

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

      # @!attribute [r] error_count
      #   The number of failed operations.
      #
      #   @return [Integer, nil]
      optional :error_count, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :error_count

      # @!attribute [r] error_items
      #   A list of items that failed to be processed.
      #
      #   @return [Array<Knockapi::Models::BulkOperation::ErrorItem>, nil]
      optional :error_items,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::BulkOperation::ErrorItem] }

      # @!parse
      #   # @return [Array<Knockapi::Models::BulkOperation::ErrorItem>]
      #   attr_writer :error_items

      # @!attribute failed_at
      #   Timestamp when the bulk operation failed.
      #
      #   @return [Time, nil]
      optional :failed_at, Time, nil?: true

      # @!attribute started_at
      #   Timestamp when the bulk operation was started.
      #
      #   @return [Time, nil]
      optional :started_at, Time, nil?: true

      # @!parse
      #   # A bulk operation entity.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param estimated_total_rows [Integer]
      #   # @param inserted_at [Time]
      #   # @param name [String]
      #   # @param processed_rows [Integer]
      #   # @param status [Symbol, Knockapi::Models::BulkOperation::Status]
      #   # @param success_count [Integer]
      #   # @param updated_at [Time]
      #   # @param completed_at [Time, nil]
      #   # @param error_count [Integer]
      #   # @param error_items [Array<Knockapi::Models::BulkOperation::ErrorItem>]
      #   # @param failed_at [Time, nil]
      #   # @param started_at [Time, nil]
      #   #
      #   def initialize(
      #     id:,
      #     _typename:,
      #     estimated_total_rows:,
      #     inserted_at:,
      #     name:,
      #     processed_rows:,
      #     status:,
      #     success_count:,
      #     updated_at:,
      #     completed_at: nil,
      #     error_count: nil,
      #     error_items: nil,
      #     failed_at: nil,
      #     started_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # The status of the bulk operation.
      #
      # @see Knockapi::Models::BulkOperation#status
      module Status
        extend Knockapi::Internal::Type::Enum

        QUEUED = :queued
        PROCESSING = :processing
        COMPLETED = :completed
        FAILED = :failed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
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

        # @!parse
        #   # @param id [String]
        #   # @param collection [String, nil]
        #   #
        #   def initialize(id:, collection: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
