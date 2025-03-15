# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsResponse < Knockapi::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        sig { returns(T::Array[Knockapi::Models::Activity]) }
        def activities
        end

        sig { params(_: T::Array[Knockapi::Models::Activity]).returns(T::Array[Knockapi::Models::Activity]) }
        def activities=(_)
        end

        sig { returns(T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)]) }
        def actors
        end

        sig do
          params(_: T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)])
            .returns(T::Array[T.any(Knockapi::Models::User, Knockapi::Models::Object)])
        end
        def actors=(_)
        end

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
        def blocks
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
              Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
              )
              ]
            )
        end
        def blocks=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def data
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
        end
        def data=(_)
        end

        sig { returns(String) }
        def inserted_at
        end

        sig { params(_: String).returns(String) }
        def inserted_at=(_)
        end

        sig { returns(Knockapi::Models::Users::FeedListItemsResponse::Source) }
        def source
        end

        sig do
          params(_: Knockapi::Models::Users::FeedListItemsResponse::Source)
            .returns(Knockapi::Models::Users::FeedListItemsResponse::Source)
        end
        def source=(_)
        end

        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tenant=(_)
        end

        sig { returns(Integer) }
        def total_activities
        end

        sig { params(_: Integer).returns(Integer) }
        def total_activities=(_)
        end

        sig { returns(Integer) }
        def total_actors
        end

        sig { params(_: Integer).returns(Integer) }
        def total_actors=(_)
        end

        sig { returns(String) }
        def updated_at
        end

        sig { params(_: String).returns(String) }
        def updated_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def archived_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def archived_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def clicked_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def clicked_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def interacted_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def interacted_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def link_clicked_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def link_clicked_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def read_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def read_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def seen_at
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def seen_at=(_)
        end

        # An in-app feed message in a user's feed
        sig do
          params(
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
        class Block < Knockapi::Union
          abstract!

          class MessageInAppFeedContentBlock < Knockapi::BaseModel
            sig { returns(String) }
            def content
            end

            sig { params(_: String).returns(String) }
            def content=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(String) }
            def rendered
            end

            sig { params(_: String).returns(String) }
            def rendered=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            # A content (text or markdown) block in a message in an app feed
            sig do
              params(content: String, name: String, rendered: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(content:, name:, rendered:, type:)
            end

            sig { override.returns({content: String, name: String, rendered: String, type: Symbol}) }
            def to_hash
            end

            class Type < Knockapi::Enum
              abstract!

              MARKDOWN = :markdown
              TEXT = :text

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class MessageInAppFeedButtonSetBlock < Knockapi::BaseModel
            sig do
              returns(
                T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
            end
            def buttons
            end

            sig do
              params(
                _: T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
                .returns(
                  T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
                )
            end
            def buttons=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            # A set of buttons in a message in an app feed
            sig do
              params(
                buttons: T::Array[Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button],
                name: String,
                type: Symbol
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
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Button < Knockapi::BaseModel
              sig { returns(String) }
              def action
              end

              sig { params(_: String).returns(String) }
              def action=(_)
              end

              sig { returns(String) }
              def label
              end

              sig { params(_: String).returns(String) }
              def label=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              # A button in a set of buttons
              sig { params(action: String, label: String, name: String).returns(T.attached_class) }
              def self.new(action:, label:, name:)
              end

              sig { override.returns({action: String, label: String, name: String}) }
              def to_hash
              end
            end

            class Type < Knockapi::Enum
              abstract!

              BUTTON_SET = :button_set

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock, Knockapi::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock]
                )
            end
            def variants
            end
          end
        end

        class Source < Knockapi::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig { returns(T::Array[String]) }
          def categories
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def categories=(_)
          end

          sig { returns(String) }
          def key
          end

          sig { params(_: String).returns(String) }
          def key=(_)
          end

          sig { returns(String) }
          def version_id
          end

          sig { params(_: String).returns(String) }
          def version_id=(_)
          end

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
