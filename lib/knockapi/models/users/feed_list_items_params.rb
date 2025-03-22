# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class FeedListItemsParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute [r] after
        #   The cursor to fetch entries after
        #
        #   @return [String, nil]
        optional :after, String

        # @!parse
        #   # @return [String]
        #   attr_writer :after

        # @!attribute [r] archived
        #   The archived status of the feed items to return
        #
        #   @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived, nil]
        optional :archived, enum: -> { Knockapi::Models::Users::FeedListItemsParams::Archived }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived]
        #   attr_writer :archived

        # @!attribute [r] before
        #   The cursor to fetch entries before
        #
        #   @return [String, nil]
        optional :before, String

        # @!parse
        #   # @return [String]
        #   attr_writer :before

        # @!attribute [r] has_tenant
        #   Whether the feed items have a tenant
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :has_tenant

        # @!attribute [r] page_size
        #   The page size to fetch
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :page_size

        # @!attribute [r] source
        #   The source of the feed items to return
        #
        #   @return [String, nil]
        optional :source, String

        # @!parse
        #   # @return [String]
        #   attr_writer :source

        # @!attribute [r] status
        #   The status of the feed items to return
        #
        #   @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status, nil]
        optional :status, enum: -> { Knockapi::Models::Users::FeedListItemsParams::Status }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status]
        #   attr_writer :status

        # @!attribute [r] tenant
        #   The tenant of the feed items to return
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!parse
        #   # @return [String]
        #   attr_writer :tenant

        # @!attribute [r] trigger_data
        #   The trigger data of the feed items to return (as a JSON string)
        #
        #   @return [String, nil]
        optional :trigger_data, String

        # @!parse
        #   # @return [String]
        #   attr_writer :trigger_data

        # @!attribute [r] workflow_categories
        #   The workflow categories of the feed items to return
        #
        #   @return [Array<String>, nil]
        optional :workflow_categories, Knockapi::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :workflow_categories

        # @!parse
        #   # @param after [String]
        #   # @param archived [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived]
        #   # @param before [String]
        #   # @param has_tenant [Boolean]
        #   # @param page_size [Integer]
        #   # @param source [String]
        #   # @param status [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status]
        #   # @param tenant [String]
        #   # @param trigger_data [String]
        #   # @param workflow_categories [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     after: nil,
        #     archived: nil,
        #     before: nil,
        #     has_tenant: nil,
        #     page_size: nil,
        #     source: nil,
        #     status: nil,
        #     tenant: nil,
        #     trigger_data: nil,
        #     workflow_categories: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # The archived status of the feed items to return
        module Archived
          extend Knockapi::Enum

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # The status of the feed items to return
        module Status
          extend Knockapi::Enum

          UNREAD = :unread
          READ = :read
          UNSEEN = :unseen
          SEEN = :seen
          ALL = :all

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
