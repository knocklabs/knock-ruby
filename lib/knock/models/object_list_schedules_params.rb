# frozen_string_literal: true

module Knock
  module Models
    class ObjectListSchedulesParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute [r] after
      #   The cursor to fetch entries after
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] page_size
      #   The page size to fetch
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] tenant
      #   The ID of the tenant to list schedules for
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!attribute [r] workflow
      #   The ID of the workflow to list schedules for
      #
      #   @return [String, nil]
      optional :workflow, String

      # @!parse
      #   # @return [String]
      #   attr_writer :workflow

      # @!parse
      #   # @param collection [String]
      #   # @param after [String]
      #   # @param before [String]
      #   # @param page_size [Integer]
      #   # @param tenant [String]
      #   # @param workflow [String]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
