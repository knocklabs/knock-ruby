# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::WorkflowRecipientRuns#list
    class WorkflowRecipientRunListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute ending_at
      #   Limits the results to workflow recipient runs started before the given date.
      #
      #   @return [Time, nil]
      optional :ending_at, Time

      # @!attribute has_errors
      #   Limits the results to workflow recipient runs that have errors.
      #
      #   @return [Boolean, nil]
      optional :has_errors, Knockapi::Internal::Type::Boolean

      # @!attribute page_size
      #   The number of items per page (defaults to 50).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute recipient
      #   Limits the results to workflow recipient runs for the given recipient. Accepts a
      #   user ID string or an object reference with `id` and `collection`.
      #
      #   @return [String, Knockapi::Models::RecipientReference::ObjectReference, nil]
      optional :recipient, union: -> { Knockapi::RecipientReference }

      # @!attribute starting_at
      #   Limits the results to workflow recipient runs started after the given date.
      #
      #   @return [Time, nil]
      optional :starting_at, Time

      # @!attribute status
      #   Limits the results to workflow recipient runs with the given status.
      #
      #   @return [Array<Symbol, Knockapi::Models::WorkflowRecipientRunListParams::Status>, nil]
      optional :status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::WorkflowRecipientRunListParams::Status] }

      # @!attribute tenant
      #   Limits the results to workflow recipient runs for the given tenant.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!attribute workflow
      #   Limits the results to workflow recipient runs for the given workflow key.
      #
      #   @return [String, nil]
      optional :workflow, String

      # @!method initialize(after: nil, before: nil, ending_at: nil, has_errors: nil, page_size: nil, recipient: nil, starting_at: nil, status: nil, tenant: nil, workflow: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::WorkflowRecipientRunListParams} for more details.
      #
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param ending_at [Time] Limits the results to workflow recipient runs started before the given date.
      #
      #   @param has_errors [Boolean] Limits the results to workflow recipient runs that have errors.
      #
      #   @param page_size [Integer] The number of items per page (defaults to 50).
      #
      #   @param recipient [String, Knockapi::Models::RecipientReference::ObjectReference] Limits the results to workflow recipient runs for the given recipient. Accepts a
      #
      #   @param starting_at [Time] Limits the results to workflow recipient runs started after the given date.
      #
      #   @param status [Array<Symbol, Knockapi::Models::WorkflowRecipientRunListParams::Status>] Limits the results to workflow recipient runs with the given status.
      #
      #   @param tenant [String] Limits the results to workflow recipient runs for the given tenant.
      #
      #   @param workflow [String] Limits the results to workflow recipient runs for the given workflow key.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Knockapi::Internal::Type::Enum

        QUEUED = :queued
        PROCESSING = :processing
        PAUSED = :paused
        COMPLETED = :completed
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
