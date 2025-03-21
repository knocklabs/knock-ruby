# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      class FeedListItemsResponse < Knockapi::BaseModel
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
        #   @return [Array<Knockapi::Models::Activity>]
        required :activities, -> { Knockapi::ArrayOf[Knockapi::Models::Activity] }

        # @!attribute actors
        #
        #   @return [Array<Knockapi::Models::User, Knockapi::Models::Object>]
        required :actors, -> { Knockapi::ArrayOf[union: Knockapi::Models::Recipient] }

        # @!attribute blocks
        #
        #   @return [Array<Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock>]
        required :blocks, -> { Knockapi::ArrayOf[union: Knockapi::Models::Users::FeedListItemsResponse::Block] }

        # @!attribute data
        #
        #   @return [Hash{Symbol=>Object}, nil]
        required :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

        # @!attribute inserted_at
        #
        #   @return [String]
        required :inserted_at, String

        # @!attribute source
        #
        #   @return [Knockapi::Models::Users::FeedListItemsResponse::Source]
        required :source, -> { Knockapi::Models::Users::FeedListItemsResponse::Source }

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
        #   # @param activities [Array<Knockapi::Models::Activity>]
        #   # @param actors [Array<Knockapi::Models::User, Knockapi::Models::Object>]
        #   # @param blocks [Array<Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock>]
        #   # @param data [Hash{Symbol=>Object}, nil]
        #   # @param inserted_at [String]
        #   # @param source [Knockapi::Models::Users::FeedListItemsResponse::Source]
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

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # A content (text or markdown) block in a message in an app feed
        module Block
          extend Knockapi::Union

          # A content (text or markdown) block in a message in an app feed
          variant -> { Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock }

          # A set of buttons in a message in an app feed
          variant -> { Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock }

          class MessageInAppFeedContentBlock < Knockapi::BaseModel
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
            #   @return [Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type]
            required :type,
                     enum: -> { Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type }

            # @!parse
            #   # A content (text or markdown) block in a message in an app feed
            #   #
            #   # @param content [String]
            #   # @param name [String]
            #   # @param rendered [String]
            #   # @param type [Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type]
            #   #
            #   def initialize(content:, name:, rendered:, type:, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void

            module Type
              extend Knockapi::Enum

              MARKDOWN = :markdown
              TEXT = :text

              finalize!
            end
          end

          class MessageInAppFeedButtonSetBlock < Knockapi::BaseModel
            # @!attribute buttons
            #
            #   @return [Array<Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button>]
            required :buttons,
                     -> { Knockapi::ArrayOf[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button] }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #
            #   @return [Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type]
            required :type,
                     enum: -> { Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type }

            # @!parse
            #   # A set of buttons in a message in an app feed
            #   #
            #   # @param buttons [Array<Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button>]
            #   # @param name [String]
            #   # @param type [Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type]
            #   #
            #   def initialize(buttons:, name:, type:, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void

            class Button < Knockapi::BaseModel
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

              # def initialize: (Hash | Knockapi::BaseModel) -> void
            end

            module Type
              extend Knockapi::Enum

              BUTTON_SET = :button_set

              finalize!
            end
          end

          # @!parse
          #   class << self
          #     # @return [Array(Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock)]
          #     def variants; end
          #   end
        end

        class Source < Knockapi::BaseModel
          # @!attribute _typename
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute categories
          #
          #   @return [Array<String>]
          required :categories, Knockapi::ArrayOf[String]

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

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end
      end
    end
  end
end
