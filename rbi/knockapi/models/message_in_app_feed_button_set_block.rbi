# typed: strong

module Knockapi
  module Models
    class MessageInAppFeedButtonSetBlock < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::MessageInAppFeedButtonSetBlock,
            Knockapi::Internal::AnyHash
          )
        end

      # A list of buttons in an in app feed message.
      sig do
        returns(T::Array[Knockapi::MessageInAppFeedButtonSetBlock::Button])
      end
      attr_accessor :buttons

      # The name of the button set in a message in an app feed.
      sig { returns(String) }
      attr_accessor :name

      # The type of block in a message in an app feed.
      sig do
        returns(Knockapi::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A button set block in a message in an app feed.
      sig do
        params(
          buttons:
            T::Array[Knockapi::MessageInAppFeedButtonSetBlock::Button::OrHash],
          name: String,
          type: Knockapi::MessageInAppFeedButtonSetBlock::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of buttons in an in app feed message.
        buttons:,
        # The name of the button set in a message in an app feed.
        name:,
        # The type of block in a message in an app feed.
        type:
      )
      end

      sig do
        override.returns(
          {
            buttons: T::Array[Knockapi::MessageInAppFeedButtonSetBlock::Button],
            name: String,
            type: Knockapi::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Button < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::MessageInAppFeedButtonSetBlock::Button,
              Knockapi::Internal::AnyHash
            )
          end

        # The action to take when the button is clicked.
        sig { returns(String) }
        attr_accessor :action

        # The label of the button.
        sig { returns(String) }
        attr_accessor :label

        # The name of the button.
        sig { returns(String) }
        attr_accessor :name

        # A button in an in app feed message.
        sig do
          params(action: String, label: String, name: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The action to take when the button is clicked.
          action:,
          # The label of the button.
          label:,
          # The name of the button.
          name:
        )
        end

        sig do
          override.returns({ action: String, label: String, name: String })
        end
        def to_hash
        end
      end

      # The type of block in a message in an app feed.
      module Type
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::MessageInAppFeedButtonSetBlock::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUTTON_SET =
          T.let(
            :button_set,
            Knockapi::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Knockapi::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
