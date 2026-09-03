# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Feeds#list_items
      class FeedListItemsResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the feed.
        #
        #   @return [String]
        required :id, String

        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute activities
        #   List of activities associated with this feed item.
        #
        #   @return [Array<Knockapi::Models::Activity>]
        required :activities, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Activity] }

        # @!attribute actors
        #   List of actors associated with this feed item.
        #
        #   @return [Array<Knockapi::Models::User, Knockapi::Models::Object>]
        required :actors, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Recipient] }

        # @!attribute blocks
        #   Content blocks that make up the feed item.
        #
        #   @return [Array<Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock>]
        required :blocks,
                 -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Users::FeedListItemsResponse::Block] }

        # @!attribute data
        #   Additional data associated with the feed item.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!attribute inserted_at
        #   Timestamp when the resource was created.
        #
        #   @return [String]
        required :inserted_at, String

        # @!attribute source
        #   Source information for the feed item.
        #
        #   @return [Knockapi::Models::Users::FeedListItemsResponse::Source]
        required :source, -> { Knockapi::Models::Users::FeedListItemsResponse::Source }

        # @!attribute tenant
        #   Tenant ID that the feed item belongs to.
        #
        #   @return [String, nil]
        required :tenant, String, nil?: true

        # @!attribute total_activities
        #   Total number of activities related to this feed item.
        #
        #   @return [Integer]
        required :total_activities, Integer

        # @!attribute total_actors
        #   Total number of actors related to this feed item.
        #
        #   @return [Integer]
        required :total_actors, Integer

        # @!attribute updated_at
        #   The timestamp when the resource was last updated.
        #
        #   @return [String]
        required :updated_at, String

        # @!attribute archived_at
        #   Timestamp when the feed item was archived.
        #
        #   @return [String, nil]
        optional :archived_at, String, nil?: true

        # @!attribute clicked_at
        #   Timestamp when the feed item was clicked.
        #
        #   @return [String, nil]
        optional :clicked_at, String, nil?: true

        # @!attribute interacted_at
        #   Timestamp when the feed item was interacted with.
        #
        #   @return [String, nil]
        optional :interacted_at, String, nil?: true

        # @!attribute link_clicked_at
        #   Timestamp when a link within the feed item was clicked.
        #
        #   @return [String, nil]
        optional :link_clicked_at, String, nil?: true

        # @!attribute read_at
        #   Timestamp when the feed item was marked as read.
        #
        #   @return [String, nil]
        optional :read_at, String, nil?: true

        # @!attribute seen_at
        #   Timestamp when the feed item was marked as seen.
        #
        #   @return [String, nil]
        optional :seen_at, String, nil?: true

        # @!method initialize(id:, _typename:, activities:, actors:, blocks:, data:, inserted_at:, source:, tenant:, total_activities:, total_actors:, updated_at:, archived_at: nil, clicked_at: nil, interacted_at: nil, link_clicked_at: nil, read_at: nil, seen_at: nil)
        #   An in-app feed message in a user's feed.
        #
        #   @param id [String] Unique identifier for the feed.
        #
        #   @param _typename [String] The typename of the schema.
        #
        #   @param activities [Array<Knockapi::Models::Activity>] List of activities associated with this feed item.
        #
        #   @param actors [Array<Knockapi::Models::User, Knockapi::Models::Object>] List of actors associated with this feed item.
        #
        #   @param blocks [Array<Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock>] Content blocks that make up the feed item.
        #
        #   @param data [Hash{Symbol=>Object}, nil] Additional data associated with the feed item.
        #
        #   @param inserted_at [String] Timestamp when the resource was created.
        #
        #   @param source [Knockapi::Models::Users::FeedListItemsResponse::Source] Source information for the feed item.
        #
        #   @param tenant [String, nil] Tenant ID that the feed item belongs to.
        #
        #   @param total_activities [Integer] Total number of activities related to this feed item.
        #
        #   @param total_actors [Integer] Total number of actors related to this feed item.
        #
        #   @param updated_at [String] The timestamp when the resource was last updated.
        #
        #   @param archived_at [String, nil] Timestamp when the feed item was archived.
        #
        #   @param clicked_at [String, nil] Timestamp when the feed item was clicked.
        #
        #   @param interacted_at [String, nil] Timestamp when the feed item was interacted with.
        #
        #   @param link_clicked_at [String, nil] Timestamp when a link within the feed item was clicked.
        #
        #   @param read_at [String, nil] Timestamp when the feed item was marked as read.
        #
        #   @param seen_at [String, nil] Timestamp when the feed item was marked as seen.

        # A content block for the feed, can be content or a button set.
        module Block
          extend Knockapi::Internal::Type::Union

          # A block in a message in an app feed.
          variant -> { Knockapi::MessageInAppFeedContentBlock }

          # A button set block in a message in an app feed.
          variant -> { Knockapi::MessageInAppFeedButtonSetBlock }

          # @!method self.variants
          #   @return [Array(Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock)]
        end

        # @see Knockapi::Models::Users::FeedListItemsResponse#source
        class Source < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute categories
          #   Categories this workflow belongs to.
          #
          #   @return [Array<String>]
          required :categories, Knockapi::Internal::Type::ArrayOf[String]

          # @!attribute key
          #   The key of the workflow.
          #
          #   @return [String]
          required :key, String

          # @!attribute version_id
          #   The workflow version ID.
          #
          #   @return [String]
          required :version_id, String

          # @!method initialize(_typename:, categories:, key:, version_id:)
          #   Source information for the feed item.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param categories [Array<String>] Categories this workflow belongs to.
          #
          #   @param key [String] The key of the workflow.
          #
          #   @param version_id [String] The workflow version ID.
        end
      end
    end
  end
end
