# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#list
    class ScheduleListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute workflow
      #   Filter by workflow key.
      #
      #   @return [String]
      required :workflow, String

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

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute recipients
      #   Filter by recipient references.
      #
      #   @return [Array<String, Knockapi::Models::RecipientReference::ObjectReference>, nil]
      optional :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference] }

      # @!attribute tenant
      #   Filter by tenant ID.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!method initialize(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {})
      #   @param workflow [String] Filter by workflow key.
      #
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param page_size [Integer] The number of items per page.
      #
      #   @param recipients [Array<String, Knockapi::Models::RecipientReference::ObjectReference>] Filter by recipient references.
      #
      #   @param tenant [String] Filter by tenant ID.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
