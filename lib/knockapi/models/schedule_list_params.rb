# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleListParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute workflow
      #   Filter by workflow
      #
      #   @return [String]
      required :workflow, String

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

      # @!attribute [r] recipients
      #   Filter by recipient
      #
      #   @return [Array<String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference>, nil]
      optional :recipients, -> { Knockapi::ArrayOf[union: Knockapi::Models::ScheduleListParams::Recipient] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference>]
      #   attr_writer :recipients

      # @!attribute [r] tenant
      #   Filter by tenant
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!parse
      #   # @param workflow [String]
      #   # @param after [String]
      #   # @param before [String]
      #   # @param page_size [Integer]
      #   # @param recipients [Array<String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference>]
      #   # @param tenant [String]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knockapi::Models::ScheduleListParams::Recipient::ObjectReference }

        class ObjectReference < Knockapi::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end

        # @!parse
        #   class << self
        #     # @return [Array(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)]
        #     def variants; end
        #   end
      end
    end
  end
end
