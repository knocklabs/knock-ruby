# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsResponse < Knockapi::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :_typename

        sig { returns(T::Array[Knockapi::Models::Activity]) }
        attr_accessor :activities

        sig { returns(T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)]) }
        attr_accessor :actors

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

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :data

        sig { returns(String) }
        attr_accessor :inserted_at

        sig { returns(Knockapi::Models::Users::FeedListItemsResponse::Source) }
        attr_reader :source

        sig { params(source: T.any(Knockapi::Models::Users::FeedListItemsResponse::Source, Knockapi::Util::AnyHash)).void }
        attr_writer :source

        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        sig { returns(Integer) }
        attr_accessor :total_activities

        sig { returns(Integer) }
        attr_accessor :total_actors

        sig { returns(String) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_accessor :archived_at

        sig { returns(T.nilable(String)) }
        attr_accessor :clicked_at

        sig { returns(T.nilable(String)) }
        attr_accessor :interacted_at

        sig { returns(T.nilable(String)) }
        attr_accessor :link_clicked_at

        sig { returns(T.nilable(String)) }
        attr_accessor :read_at

        sig { returns(T.nilable(String)) }
        attr_accessor :seen_at

        # An in-app feed message in a user's feed
        sig do
          params(
            id: String,
            _typename: String,
            activities: T::Array[T.any(Knockapi::Models::Activity, Knockapi::Util::AnyHash)],
            actors: T::Array[T.any(Knockapi::Models::User, Knockapi::Util::AnyHash, Knockapi::Models::Object)],
            blocks: T::Array[
            T.any(
              Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
              Knockapi::Util::AnyHash,
              Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
            )
            ],
            data: T.nilable(T::Hash[Symbol, T.anything]),
            inserted_at: String,
            source: T.any(Knockapi::Models::Users::FeedListItemsResponse::Source, Knockapi::Util::AnyHash),
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
          id:,
          _typename:,
          activities:,
          actors:,
          blocks:,
          data:,
          inserted_at:,
          source:,
          tenant:,
          total_activities:,
          total_actors:,
          updated_at:,
          archived_at: nil,
          clicked_at: nil,
          interacted_at: nil,
          link_clicked_at: nil,
          read_at: nil,
          seen_at: nil
        )
        end

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
        def to_hash
        end

        # A content (text or markdown) block in a message in an app feed
        module Block
          extend Knockapi::Union

          class MessageInAppFeedContentBlock < Knockapi::BaseModel
            sig { returns(String) }
            attr_accessor :content

            sig { returns(String) }
            attr_accessor :name

            sig { returns(String) }
            attr_accessor :rendered

            sig do
              returns(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # A content (text or markdown) block in a message in an app feed
            sig do
              params(
                content: String,
                name: String,
                rendered: String,
                type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(content:, name:, rendered:, type:)
            end

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
            def to_hash
            end

            module Type
              extend Knockapi::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                  )
                end

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
              def self.values
              end
            end
          end

          class MessageInAppFeedButtonSetBlock < Knockapi::BaseModel
            sig do
              returns(
                T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
            end
            attr_accessor :buttons

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # A set of buttons in a message in an app feed
            sig do
              params(
                buttons: T::Array[
                T.any(
                  Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button,
                  Knockapi::Util::AnyHash
                )
                ],
                name: String,
                type: Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::OrSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(buttons:, name:, type:)
            end

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
            def to_hash
            end

            class Button < Knockapi::BaseModel
              sig { returns(String) }
              attr_accessor :action

              sig { returns(String) }
              attr_accessor :label

              sig { returns(String) }
              attr_accessor :name

              # A button in a set of buttons
              sig { params(action: String, label: String, name: String).returns(T.attached_class) }
              def self.new(action:, label:, name:)
              end

              sig { override.returns({action: String, label: String, name: String}) }
              def to_hash
              end
            end

            module Type
              extend Knockapi::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                  )
                end

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
              def self.values
              end
            end
          end

          sig do
            override
              .returns(
                [Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock]
              )
          end
          def self.variants
          end
        end

        class Source < Knockapi::BaseModel
          sig { returns(String) }
          attr_accessor :_typename

          sig { returns(T::Array[String]) }
          attr_accessor :categories

          sig { returns(String) }
          attr_accessor :key

          sig { returns(String) }
          attr_accessor :version_id

          sig do
            params(_typename: String, categories: T::Array[String], key: String, version_id: String)
              .returns(T.attached_class)
          end
          def self.new(_typename:, categories:, key:, version_id:)
          end

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
          def to_hash
          end
        end
      end
    end
  end
end
