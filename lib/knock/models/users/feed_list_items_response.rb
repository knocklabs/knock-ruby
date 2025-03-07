# frozen_string_literal: true

module Knock
  module Models
    module Users
      class FeedListItemsResponse < Knock::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute activities
        #
        #   @return [Array<Knock::Models::Activity>]
        required :activities, -> { Knock::ArrayOf[Knock::Models::Activity] }

        # @!attribute actors
        #
        #   @return [Array<Knock::Models::User, Knock::Models::Object>]
        required :actors, -> { Knock::ArrayOf[union: Knock::Models::Recipient] }

        # @!attribute blocks
        #
        #   @return [Array<Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock>]
        required :blocks, -> { Knock::ArrayOf[union: Knock::Models::Users::FeedListItemsResponse::Block] }

        # @!attribute data
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :data, Knock::HashOf[Knock::Unknown], nil?: true

        # @!attribute inserted_at
        #
        #   @return [String]
        required :inserted_at, String

        # @!attribute source
        #
        #   @return [Knock::Models::Users::FeedListItemsResponse::Source]
        required :source, -> { Knock::Models::Users::FeedListItemsResponse::Source }

        # @!attribute tenant
        #
        #   @return [String, nil]
        required :tenant, String, nil?: true

        # @!attribute total_activities
        #
        #   @return [Integer]
        required :total_activities, Integer

        # @!attribute total_actors
        #
        #   @return [Integer]
        required :total_actors, Integer

        # @!attribute updated_at
        #
        #   @return [String]
        required :updated_at, String

        # @!attribute archived_at
        #
        #   @return [String, nil]
        optional :archived_at, String, nil?: true

        # @!attribute clicked_at
        #
        #   @return [String, nil]
        optional :clicked_at, String, nil?: true

        # @!attribute interacted_at
        #
        #   @return [String, nil]
        optional :interacted_at, String, nil?: true

        # @!attribute link_clicked_at
        #
        #   @return [String, nil]
        optional :link_clicked_at, String, nil?: true

        # @!attribute read_at
        #
        #   @return [String, nil]
        optional :read_at, String, nil?: true

        # @!attribute seen_at
        #
        #   @return [String, nil]
        optional :seen_at, String, nil?: true

        # @!parse
        #   # An in-app feed message in a user's feed
        #   #
        #   # @param id [String]
        #   # @param _typename [String]
        #   # @param activities [Array<Knock::Models::Activity>]
        #   # @param actors [Array<Knock::Models::User, Knock::Models::Object>]
        #   # @param blocks [Array<Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock>]
        #   # @param data [Hash{Symbol=>Object}, nil]
        #   # @param inserted_at [String]
        #   # @param source [Knock::Models::Users::FeedListItemsResponse::Source]
        #   # @param tenant [String, nil]
        #   # @param total_activities [Integer]
        #   # @param total_actors [Integer]
        #   # @param updated_at [String]
        #   # @param archived_at [String, nil]
        #   # @param clicked_at [String, nil]
        #   # @param interacted_at [String, nil]
        #   # @param link_clicked_at [String, nil]
        #   # @param read_at [String, nil]
        #   # @param seen_at [String, nil]
        #   #
        #   def initialize(
        #     id:,
        #     _typename:,
        #     activities:,
        #     actors:,
        #     blocks:,
        #     data:,
        #     inserted_at:,
        #     source:,
        #     tenant:,
        #     total_activities:,
        #     total_actors:,
        #     updated_at:,
        #     archived_at: nil,
        #     clicked_at: nil,
        #     interacted_at: nil,
        #     link_clicked_at: nil,
        #     read_at: nil,
        #     seen_at: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Knock::BaseModel) -> void

        # @abstract
        #
        # A content (text or markdown) block in a message in an app feed
        class Block < Knock::Union
          # A content (text or markdown) block in a message in an app feed
          variant -> { Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock }

          # A set of buttons in a message in an app feed
          variant -> { Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock }

          class MessageInAppFeedContentBlock < Knock::BaseModel
            # @!attribute content
            #
            #   @return [String]
            required :content, String

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute rendered
            #
            #   @return [String]
            required :rendered, String

            # @!attribute type
            #
            #   @return [Symbol, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type]
            required :type,
                     enum: -> { Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type }

            # @!parse
            #   # A content (text or markdown) block in a message in an app feed
            #   #
            #   # @param content [String]
            #   # @param name [String]
            #   # @param rendered [String]
            #   # @param type [Symbol, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type]
            #   #
            #   def initialize(content:, name:, rendered:, type:, **) = super

            # def initialize: (Hash | Knock::BaseModel) -> void

            # @abstract
            #
            class Type < Knock::Enum
              MARKDOWN = :markdown
              TEXT = :text

              finalize!
            end
          end

          class MessageInAppFeedButtonSetBlock < Knock::BaseModel
            # @!attribute buttons
            #
            #   @return [Array<Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button>]
            required :buttons,
                     -> { Knock::ArrayOf[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button] }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #
            #   @return [Symbol, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type]
            required :type,
                     enum: -> { Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type }

            # @!parse
            #   # A set of buttons in a message in an app feed
            #   #
            #   # @param buttons [Array<Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button>]
            #   # @param name [String]
            #   # @param type [Symbol, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type]
            #   #
            #   def initialize(buttons:, name:, type:, **) = super

            # def initialize: (Hash | Knock::BaseModel) -> void

            class Button < Knock::BaseModel
              # @!attribute action
              #
              #   @return [String]
              required :action, String

              # @!attribute label
              #
              #   @return [String]
              required :label, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!parse
              #   # A button in a set of buttons
              #   #
              #   # @param action [String]
              #   # @param label [String]
              #   # @param name [String]
              #   #
              #   def initialize(action:, label:, name:, **) = super

              # def initialize: (Hash | Knock::BaseModel) -> void
            end

            # @abstract
            #
            class Type < Knock::Enum
              BUTTON_SET = :button_set

              finalize!
            end
          end
        end

        class Source < Knock::BaseModel
          # @!attribute _typename
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute categories
          #
          #   @return [Array<String>]
          required :categories, Knock::ArrayOf[String]

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!attribute version_id
          #
          #   @return [String]
          required :version_id, String

          # @!parse
          #   # @param _typename [String]
          #   # @param categories [Array<String>]
          #   # @param key [String]
          #   # @param version_id [String]
          #   #
          #   def initialize(_typename:, categories:, key:, version_id:, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
