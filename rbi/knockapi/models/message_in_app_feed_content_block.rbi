# typed: strong

module Knockapi
  module Models
    class MessageInAppFeedContentBlock < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::MessageInAppFeedContentBlock,
            Knockapi::Internal::AnyHash
          )
        end

      # The content of the block in a message in an app feed.
      sig { returns(String) }
      attr_accessor :content

      # The name of the block in a message in an app feed.
      sig { returns(String) }
      attr_accessor :name

      # The rendered HTML version of the content.
      sig { returns(String) }
      attr_accessor :rendered

      # The type of block in a message in an app feed.
      sig do
        returns(Knockapi::MessageInAppFeedContentBlock::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A block in a message in an app feed.
      sig do
        params(
          content: String,
          name: String,
          rendered: String,
          type: Knockapi::MessageInAppFeedContentBlock::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The content of the block in a message in an app feed.
        content:,
        # The name of the block in a message in an app feed.
        name:,
        # The rendered HTML version of the content.
        rendered:,
        # The type of block in a message in an app feed.
        type:
      )
      end

      sig do
        override.returns(
          {
            content: String,
            name: String,
            rendered: String,
            type: Knockapi::MessageInAppFeedContentBlock::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of block in a message in an app feed.
      module Type
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::MessageInAppFeedContentBlock::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARKDOWN =
          T.let(
            :markdown,
            Knockapi::MessageInAppFeedContentBlock::Type::TaggedSymbol
          )
        TEXT =
          T.let(
            :text,
            Knockapi::MessageInAppFeedContentBlock::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Knockapi::MessageInAppFeedContentBlock::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
