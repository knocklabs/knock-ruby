# frozen_string_literal: true

module Knock
  module Models
    module Users
      class FeedListItemsParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

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
        #   @return [Symbol, Knock::Models::Users::FeedListItemsParams::Archived, nil]
        optional :archived, enum: -> { Knock::Models::Users::FeedListItemsParams::Archived }

        # @!parse
        #   # @return [Symbol, Knock::Models::Users::FeedListItemsParams::Archived]
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
        optional :has_tenant, Knock::BooleanModel

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
        #   @return [Symbol, Knock::Models::Users::FeedListItemsParams::Status, nil]
        optional :status, enum: -> { Knock::Models::Users::FeedListItemsParams::Status }

        # @!parse
        #   # @return [Symbol, Knock::Models::Users::FeedListItemsParams::Status]
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
        optional :workflow_categories, Knock::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :workflow_categories

        # @!parse
        #   # @param user_id [String]
        #   # @param after [String]
        #   # @param archived [Symbol, Knock::Models::Users::FeedListItemsParams::Archived]
        #   # @param before [String]
        #   # @param has_tenant [Boolean]
        #   # @param page_size [Integer]
        #   # @param source [String]
        #   # @param status [Symbol, Knock::Models::Users::FeedListItemsParams::Status]
        #   # @param tenant [String]
        #   # @param trigger_data [String]
        #   # @param workflow_categories [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     user_id:,
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

        # def initialize: (Hash | Knock::BaseModel) -> void

        # @abstract
        #
        # The archived status of the feed items to return
        class Archived < Knock::Enum
          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          finalize!
        end

        # @abstract
        #
        # The status of the feed items to return
        class Status < Knock::Enum
          UNREAD = :unread
          READ = :read
          UNSEEN = :unseen
          SEEN = :seen
          ALL = :all

          finalize!
        end
      end
    end
  end
end
