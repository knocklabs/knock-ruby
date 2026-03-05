# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#list_items
      class FeedListItemsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute after
        #   The cursor to fetch entries after.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   The archived status of the feed items.
        #
        #   @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived, nil]
        optional :archived, enum: -> { Knockapi::Users::FeedListItemsParams::Archived }

        # @!attribute before
        #   The cursor to fetch entries before.
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute exclude
        #   Comma-separated list of field paths to exclude from the response. Use dot
        #   notation for nested fields (e.g., `entries.archived_at`). Limited to 3 levels
        #   deep.
        #
        #   @return [String, nil]
        optional :exclude, String

        # @!attribute has_tenant
        #   Whether the feed items have a tenant.
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::Internal::Type::Boolean

        # @!attribute inserted_at
        #
        #   @return [Knockapi::Models::Users::FeedListItemsParams::InsertedAt, nil]
        optional :inserted_at, -> { Knockapi::Users::FeedListItemsParams::InsertedAt }

        # @!attribute locale
        #   The locale to render the feed items in. Must be in the IETF 5646 format (e.g.
        #   `en-US`). When not provided, will default to the locale that the feed items were
        #   rendered in. Only available for enterprise plan customers using custom
        #   translations.
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute mode
        #   The mode to render the feed items in. Can be `compact` or `rich`. Defaults to
        #   `rich`. When `mode` is `compact`, feed items will not have `activities` and
        #   `total_activities` fields; the `data` field will not include nested arrays and
        #   objects; and the `actors` field will only have up to one actor.
        #
        #   @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Mode, nil]
        optional :mode, enum: -> { Knockapi::Users::FeedListItemsParams::Mode }

        # @!attribute page_size
        #   The number of items per page (defaults to 50).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute source
        #   The workflow key associated with the message in the feed.
        #
        #   @return [String, nil]
        optional :source, String

        # @!attribute status
        #   The status of the feed items.
        #
        #   @return [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status, nil]
        optional :status, enum: -> { Knockapi::Users::FeedListItemsParams::Status }

        # @!attribute tenant
        #   The tenant associated with the feed items.
        #
        #   @return [String, nil]
        optional :tenant, String

        # @!attribute trigger_data
        #   The trigger data of the feed items (as a JSON string).
        #
        #   @return [String, nil]
        optional :trigger_data, String

        # @!attribute workflow_categories
        #   The workflow categories of the feed items.
        #
        #   @return [Array<String>, nil]
        optional :workflow_categories, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(user_id:, id:, after: nil, archived: nil, before: nil, exclude: nil, has_tenant: nil, inserted_at: nil, locale: nil, mode: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::FeedListItemsParams} for more details.
        #
        #   @param user_id [String]
        #
        #   @param id [String]
        #
        #   @param after [String] The cursor to fetch entries after.
        #
        #   @param archived [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived] The archived status of the feed items.
        #
        #   @param before [String] The cursor to fetch entries before.
        #
        #   @param exclude [String] Comma-separated list of field paths to exclude from the response. Use dot notati
        #
        #   @param has_tenant [Boolean] Whether the feed items have a tenant.
        #
        #   @param inserted_at [Knockapi::Models::Users::FeedListItemsParams::InsertedAt]
        #
        #   @param locale [String] The locale to render the feed items in. Must be in the IETF 5646 format (e.g. `e
        #
        #   @param mode [Symbol, Knockapi::Models::Users::FeedListItemsParams::Mode] The mode to render the feed items in. Can be `compact` or `rich`. Defaults to `r
        #
        #   @param page_size [Integer] The number of items per page (defaults to 50).
        #
        #   @param source [String] The workflow key associated with the message in the feed.
        #
        #   @param status [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status] The status of the feed items.
        #
        #   @param tenant [String] The tenant associated with the feed items.
        #
        #   @param trigger_data [String] The trigger data of the feed items (as a JSON string).
        #
        #   @param workflow_categories [Array<String>] The workflow categories of the feed items.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        # The archived status of the feed items.
        module Archived
          extend Knockapi::Internal::Type::Enum

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class InsertedAt < Knockapi::Internal::Type::BaseModel
          # @!attribute gt
          #   Limits the results to items inserted after the given date.
          #
          #   @return [String, nil]
          optional :gt, String

          # @!attribute gte
          #   Limits the results to items inserted after or on the given date.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lt
          #   Limits the results to items inserted before the given date.
          #
          #   @return [String, nil]
          optional :lt, String

          # @!attribute lte
          #   Limits the results to items inserted before or on the given date.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          #   @param gt [String] Limits the results to items inserted after the given date.
          #
          #   @param gte [String] Limits the results to items inserted after or on the given date.
          #
          #   @param lt [String] Limits the results to items inserted before the given date.
          #
          #   @param lte [String] Limits the results to items inserted before or on the given date.
        end

        # The mode to render the feed items in. Can be `compact` or `rich`. Defaults to
        # `rich`. When `mode` is `compact`, feed items will not have `activities` and
        # `total_activities` fields; the `data` field will not include nested arrays and
        # objects; and the `actors` field will only have up to one actor.
        module Mode
          extend Knockapi::Internal::Type::Enum

          COMPACT = :compact
          RICH = :rich

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the feed items.
        module Status
          extend Knockapi::Internal::Type::Enum

          UNREAD = :unread
          READ = :read
          UNSEEN = :unseen
          SEEN = :seen
          ALL = :all

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
