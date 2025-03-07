# frozen_string_literal: true

module Knock
  module Models
    class BulkOperationGetResponse < Knock::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute estimated_total_rows
      #
      #   @return [Integer]
      required :estimated_total_rows, Integer

      # @!attribute inserted_at
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute processed_rows
      #
      #   @return [Integer]
      required :processed_rows, Integer

      # @!attribute status
      #
      #   @return [Symbol, Knock::Models::BulkOperationGetResponse::Status]
      required :status, enum: -> { Knock::Models::BulkOperationGetResponse::Status }

      # @!attribute success_count
      #
      #   @return [Integer]
      required :success_count, Integer

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute completed_at
      #
      #   @return [Time, nil]
      optional :completed_at, Time, nil?: true

      # @!attribute [r] error_count
      #
      #   @return [Integer, nil]
      optional :error_count, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :error_count

      # @!attribute [r] error_items
      #   A list of items that failed to be processed
      #
      #   @return [Array<Knock::Models::BulkOperationGetResponse::ErrorItem>, nil]
      optional :error_items, -> { Knock::ArrayOf[Knock::Models::BulkOperationGetResponse::ErrorItem] }

      # @!parse
      #   # @return [Array<Knock::Models::BulkOperationGetResponse::ErrorItem>]
      #   attr_writer :error_items

      # @!attribute failed_at
      #
      #   @return [Time, nil]
      optional :failed_at, Time, nil?: true

      # @!attribute started_at
      #
      #   @return [Time, nil]
      optional :started_at, Time, nil?: true

      # @!parse
      #   # A bulk operation entity
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param estimated_total_rows [Integer]
      #   # @param inserted_at [Time]
      #   # @param name [String]
      #   # @param processed_rows [Integer]
      #   # @param status [Symbol, Knock::Models::BulkOperationGetResponse::Status]
      #   # @param success_count [Integer]
      #   # @param updated_at [Time]
      #   # @param completed_at [Time, nil]
      #   # @param error_count [Integer]
      #   # @param error_items [Array<Knock::Models::BulkOperationGetResponse::ErrorItem>]
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

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      class Status < Knock::Enum
        QUEUED = :queued
        PROCESSING = :processing
        COMPLETED = :completed
        FAILED = :failed

        finalize!
      end

      class ErrorItem < Knock::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute collection
        #
        #   @return [String, nil]
        optional :collection, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param collection [String, nil]
        #   #
        #   def initialize(id:, collection: nil, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
