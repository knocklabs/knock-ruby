# frozen_string_literal: true

module Knockapi
  module Models
    class MessageInAppFeedContentBlock < Knockapi::Internal::Type::BaseModel
      # @!attribute content
      #   The content of the block in a message in an app feed.
      #
      #   @return [String]
      required :content, String

      # @!attribute name
      #   The name of the block in a message in an app feed.
      #
      #   @return [String]
      required :name, String

      # @!attribute rendered
      #   The rendered HTML version of the content.
      #
      #   @return [String]
      required :rendered, String

      # @!attribute type
      #   The type of block in a message in an app feed.
      #
      #   @return [Symbol, Knockapi::Models::MessageInAppFeedContentBlock::Type]
      required :type, enum: -> { Knockapi::MessageInAppFeedContentBlock::Type }

      # @!method initialize(content:, name:, rendered:, type:)
      #   A block in a message in an app feed.
      #
      #   @param content [String] The content of the block in a message in an app feed.
      #
      #   @param name [String] The name of the block in a message in an app feed.
      #
      #   @param rendered [String] The rendered HTML version of the content.
      #
      #   @param type [Symbol, Knockapi::Models::MessageInAppFeedContentBlock::Type] The type of block in a message in an app feed.

      # The type of block in a message in an app feed.
      #
      # @see Knockapi::Models::MessageInAppFeedContentBlock#type
      module Type
        extend Knockapi::Internal::Type::Enum

        MARKDOWN = :markdown
        TEXT = :text

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
