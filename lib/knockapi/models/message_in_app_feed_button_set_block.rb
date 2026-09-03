# frozen_string_literal: true

module Knockapi
  module Models
    class MessageInAppFeedButtonSetBlock < Knockapi::Internal::Type::BaseModel
      # @!attribute buttons
      #   A list of buttons in an in app feed message.
      #
      #   @return [Array<Knockapi::Models::MessageInAppFeedButtonSetBlock::Button>]
      required :buttons,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::MessageInAppFeedButtonSetBlock::Button] }

      # @!attribute name
      #   The name of the button set in a message in an app feed.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   The type of block in a message in an app feed.
      #
      #   @return [Symbol, Knockapi::Models::MessageInAppFeedButtonSetBlock::Type]
      required :type, enum: -> { Knockapi::MessageInAppFeedButtonSetBlock::Type }

      # @!method initialize(buttons:, name:, type:)
      #   A button set block in a message in an app feed.
      #
      #   @param buttons [Array<Knockapi::Models::MessageInAppFeedButtonSetBlock::Button>] A list of buttons in an in app feed message.
      #
      #   @param name [String] The name of the button set in a message in an app feed.
      #
      #   @param type [Symbol, Knockapi::Models::MessageInAppFeedButtonSetBlock::Type] The type of block in a message in an app feed.

      class Button < Knockapi::Internal::Type::BaseModel
        # @!attribute action
        #   The action to take when the button is clicked.
        #
        #   @return [String]
        required :action, String

        # @!attribute label
        #   The label of the button.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name of the button.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(action:, label:, name:)
        #   A button in an in app feed message.
        #
        #   @param action [String] The action to take when the button is clicked.
        #
        #   @param label [String] The label of the button.
        #
        #   @param name [String] The name of the button.
      end

      # The type of block in a message in an app feed.
      #
      # @see Knockapi::Models::MessageInAppFeedButtonSetBlock#type
      module Type
        extend Knockapi::Internal::Type::Enum

        BUTTON_SET = :button_set

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
