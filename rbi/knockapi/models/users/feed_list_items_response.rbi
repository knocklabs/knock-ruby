# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsResponse < Knockapi::Internal::Type::BaseModel
        # Unique identifier for the feed.
        sig { returns(String) }
        attr_accessor :id

        # The typename of the schema.
        sig { returns(String) }
        attr_accessor :_typename

        # List of activities associated with this feed item.
        sig { returns(T::Array[Knockapi::Models::Activity]) }
        attr_accessor :activities

        # List of actors associated with this feed item.
        sig { returns(T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)]) }
        attr_accessor :actors

        # Content blocks that make up the feed item.
        sig do
          returns(
            T::Array[
              T.any(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
              )
            ]
          )
        end
        attr_accessor :blocks

        # Additional data associated with the feed item.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :data

        # Timestamp when the resource was created.
        sig { returns(String) }
        attr_accessor :inserted_at

        # Source information for the feed item.
        sig { returns(Knockapi::Models::Users::FeedListItemsResponse::Source) }
        attr_reader :source

        sig do
          params(source: T.any(Knockapi::Models::Users::FeedListItemsResponse::Source, Knockapi::Internal::AnyHash))
            .void
        end
        attr_writer :source

        # Tenant ID that the feed item belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        # Total number of activities related to this feed item.
        sig { returns(Integer) }
        attr_accessor :total_activities

        # Total number of actors related to this feed item.
        sig { returns(Integer) }
        attr_accessor :total_actors

        # The timestamp when the resource was last updated.
        sig { returns(String) }
        attr_accessor :updated_at

        # Timestamp when the feed item was archived.
        sig { returns(T.nilable(String)) }
        attr_accessor :archived_at

        # Timestamp when the feed item was clicked.
        sig { returns(T.nilable(String)) }
        attr_accessor :clicked_at

        # Timestamp when the feed item was interacted with.
        sig { returns(T.nilable(String)) }
        attr_accessor :interacted_at

        # Timestamp when a link within the feed item was clicked.
        sig { returns(T.nilable(String)) }
        attr_accessor :link_clicked_at

        # Timestamp when the feed item was marked as read.
        sig { returns(T.nilable(String)) }
        attr_accessor :read_at

        # Timestamp when the feed item was marked as seen.
        sig { returns(T.nilable(String)) }
        attr_accessor :seen_at

        # An in-app feed message in a user's feed.
        sig do
          params(
            id: String,
            _typename: String,
            activities: T::Array[T.any(Knockapi::Models::Activity, Knockapi::Internal::AnyHash)],
            actors: T::Array[T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash, Knockapi::Models::Object)],
            blocks: T::Array[
              T.any(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                Knockapi::Internal::AnyHash,
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
              )
            ],
            data: T.nilable(T::Hash[Symbol, T.anything]),
            inserted_at: String,
            source: T.any(Knockapi::Models::Users::FeedListItemsResponse::Source, Knockapi::Internal::AnyHash),
            tenant: T.nilable(String),
            total_activities: Integer,
            total_actors: Integer,
            updated_at: String,
            archived_at: T.nilable(String),
            clicked_at: T.nilable(String),
            interacted_at: T.nilable(String),
            link_clicked_at: T.nilable(String),
            read_at: T.nilable(String),
            seen_at: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the feed.
          id:,
          # The typename of the schema.
          _typename:,
          # List of activities associated with this feed item.
          activities:,
          # List of actors associated with this feed item.
          actors:,
          # Content blocks that make up the feed item.
          blocks:,
          # Additional data associated with the feed item.
          data:,
          # Timestamp when the resource was created.
          inserted_at:,
          # Source information for the feed item.
          source:,
          # Tenant ID that the feed item belongs to.
          tenant:,
          # Total number of activities related to this feed item.
          total_activities:,
          # Total number of actors related to this feed item.
          total_actors:,
          # The timestamp when the resource was last updated.
          updated_at:,
          # Timestamp when the feed item was archived.
          archived_at: nil,
          # Timestamp when the feed item was clicked.
          clicked_at: nil,
          # Timestamp when the feed item was interacted with.
          interacted_at: nil,
          # Timestamp when a link within the feed item was clicked.
          link_clicked_at: nil,
          # Timestamp when the feed item was marked as read.
          read_at: nil,
          # Timestamp when the feed item was marked as seen.
          seen_at: nil
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                _typename: String,
                activities: T::Array[Knockapi::Models::Activity],
                actors: T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)],
                blocks: T::Array[
                  T.any(
                    Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                    Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
                  )
                ],
                data: T.nilable(T::Hash[Symbol, T.anything]),
                inserted_at: String,
                source: Knockapi::Models::Users::FeedListItemsResponse::Source,
                tenant: T.nilable(String),
                total_activities: Integer,
                total_actors: Integer,
                updated_at: String,
                archived_at: T.nilable(String),
                clicked_at: T.nilable(String),
                interacted_at: T.nilable(String),
                link_clicked_at: T.nilable(String),
                read_at: T.nilable(String),
                seen_at: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # A content block for the feed, can be content or a button set.
        module Block
          extend Knockapi::Internal::Type::Union

          class MessageInAppFeedContentBlock < Knockapi::Internal::Type::BaseModel
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
              returns(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # A block in a message in an app feed.
            sig do
              params(
                content: String,
                name: String,
                rendered: String,
                type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::OrSymbol
              )
                .returns(T.attached_class)
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
            ); end
            sig do
              override
                .returns(
                  {
                    content: String,
                    name: String,
                    rendered: String,
                    type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                  }
                )
            end
            def to_hash; end

            # The type of block in a message in an app feed.
            module Type
              extend Knockapi::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MARKDOWN =
                T.let(
                  :markdown,
                  Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )
              TEXT =
                T.let(
                  :text,
                  Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          class MessageInAppFeedButtonSetBlock < Knockapi::Internal::Type::BaseModel
            # A list of buttons in an in app feed message.
            sig do
              returns(
                T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
            end
            attr_accessor :buttons

            # The name of the button set in a message in an app feed.
            sig { returns(String) }
            attr_accessor :name

            # The type of block in a message in an app feed.
            sig do
              returns(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # A button set block in a message in an app feed.
            sig do
              params(
                buttons: T::Array[
                  T.any(
                    Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button,
                    Knockapi::Internal::AnyHash
                  )
                ],
                name: String,
                type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              # A list of buttons in an in app feed message.
              buttons:,
              # The name of the button set in a message in an app feed.
              name:,
              # The type of block in a message in an app feed.
              type:
            ); end
            sig do
              override
                .returns(
                  {
                    buttons: T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button],
                    name: String,
                    type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                  }
                )
            end
            def to_hash; end

            class Button < Knockapi::Internal::Type::BaseModel
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
              sig { params(action: String, label: String, name: String).returns(T.attached_class) }
              def self.new(
                # The action to take when the button is clicked.
                action:,
                # The label of the button.
                label:,
                # The name of the button.
                name:
              ); end
              sig { override.returns({action: String, label: String, name: String}) }
              def to_hash; end
            end

            # The type of block in a message in an app feed.
            module Type
              extend Knockapi::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BUTTON_SET =
                T.let(
                  :button_set,
                  Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock]
              )
          end
          def self.variants; end
        end

        class Source < Knockapi::Internal::Type::BaseModel
          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # Categories this workflow belongs to.
          sig { returns(T::Array[String]) }
          attr_accessor :categories

          # The key of the workflow.
          sig { returns(String) }
          attr_accessor :key

          # The workflow version ID.
          sig { returns(String) }
          attr_accessor :version_id

          # Source information for the feed item.
          sig do
            params(_typename: String, categories: T::Array[String], key: String, version_id: String)
              .returns(T.attached_class)
          end
          def self.new(
            # The typename of the schema.
            _typename:,
            # Categories this workflow belongs to.
            categories:,
            # The key of the workflow.
            key:,
            # The workflow version ID.
            version_id:
          ); end
          sig do
            override.returns(
              {
                _typename: String,
                categories: T::Array[String],
                key: String,
                version_id: String
              }
            )
          end
          def to_hash; end
        end
      end
    end
  end
end
