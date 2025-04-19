# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#list
    class ScheduleListParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute workflow
      #   Filter by workflow key.
      #
      #   @return [String]
      required :workflow, String

      # @!attribute [r] after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] recipients
      #   Filter by recipient IDs.
      #
      #   @return [Array<String>, nil]
      optional :recipients, Knockapi::Internal::Type::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :recipients

      # @!attribute [r] tenant
      #   Filter by tenant ID.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!method initialize(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {})
      #   @param workflow [String]
      #   @param after [String]
      #   @param before [String]
      #   @param page_size [Integer]
      #   @param recipients [Array<String>]
      #   @param tenant [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
