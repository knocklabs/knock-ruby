# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#list_items
      class FeedListItemsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

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

        # @!attribute has_tenant
        #   Whether the feed items have a tenant.
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::Internal::Type::Boolean

        # @!attribute locale
        #   The locale to render the feed items in. Must be in the IETF 5646 format (e.g.
        #   `en-US`). When not provided, will default to the locale that the feed items were
        #   rendered in. Only available for enterprise plan customers using custom
        #   translations.
        #
        #   @return [String, nil]
        optional :locale, String

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

        # @!method initialize(after: nil, archived: nil, before: nil, has_tenant: nil, locale: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::FeedListItemsParams} for more details.
        #
        #   @param after [String] The cursor to fetch entries after.
        #
        #   @param archived [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived] The archived status of the feed items.
        #
        #   @param before [String] The cursor to fetch entries before.
        #
        #   @param has_tenant [Boolean] Whether the feed items have a tenant.
        #
        #   @param locale [String] The locale to render the feed items in. Must be in the IETF 5646 format (e.g. `e
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
