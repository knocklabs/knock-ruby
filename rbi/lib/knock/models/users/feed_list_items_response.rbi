# typed: strong

module Knock
  module Models
    module Users
      class FeedListItemsResponse < Knock::BaseModel
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

        sig { returns(T::Array[Knock::Models::Activity]) }
        def activities
        end

        sig { params(_: T::Array[Knock::Models::Activity]).returns(T::Array[Knock::Models::Activity]) }
        def activities=(_)
        end

        sig { returns(T::Array[T.any(Knock::Models::User, Knock::Models::Object)]) }
        def actors
        end

        sig do
          params(_: T::Array[T.any(Knock::Models::User, Knock::Models::Object)])
            .returns(T::Array[T.any(Knock::Models::User, Knock::Models::Object)])
        end
        def actors=(_)
        end

        sig do
          returns(
            T::Array[
            T.any(
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
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
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
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

        sig { returns(Knock::Models::Users::FeedListItemsResponse::Source) }
        def source
        end

        sig do
          params(_: Knock::Models::Users::FeedListItemsResponse::Source)
            .returns(Knock::Models::Users::FeedListItemsResponse::Source)
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

        sig do
          params(
            id: String,
            _typename: String,
            activities: T::Array[Knock::Models::Activity],
            actors: T::Array[T.any(Knock::Models::User, Knock::Models::Object)],
            blocks: T::Array[
            T.any(
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
              Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
            )
            ],
            data: T.nilable(T::Hash[Symbol, T.anything]),
            inserted_at: String,
            source: Knock::Models::Users::FeedListItemsResponse::Source,
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
            .void
        end
        def initialize(
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
                activities: T::Array[Knock::Models::Activity],
                actors: T::Array[T.any(Knock::Models::User, Knock::Models::Object)],
                blocks: T::Array[
                T.any(
                  Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock,
                  Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock
                )
                ],
                data: T.nilable(T::Hash[Symbol, T.anything]),
                inserted_at: String,
                source: Knock::Models::Users::FeedListItemsResponse::Source,
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

        class Block < Knock::Union
          abstract!

          class MessageInAppFeedContentBlock < Knock::BaseModel
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

            sig { params(content: String, name: String, rendered: String, type: Symbol).void }
            def initialize(content:, name:, rendered:, type:)
            end

            sig { override.returns({content: String, name: String, rendered: String, type: Symbol}) }
            def to_hash
            end

            class Type < Knock::Enum
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

          class MessageInAppFeedButtonSetBlock < Knock::BaseModel
            sig do
              returns(
                T::Array[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
            end
            def buttons
            end

            sig do
              params(
                _: T::Array[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
              )
                .returns(
                  T::Array[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button]
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

            sig do
              params(
                buttons: T::Array[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button],
                name: String,
                type: Symbol
              )
                .void
            end
            def initialize(buttons:, name:, type:)
            end

            sig do
              override
                .returns(
                  {
                    buttons: T::Array[Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock::Button],
                    name: String,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Button < Knock::BaseModel
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

              sig { params(action: String, label: String, name: String).void }
              def initialize(action:, label:, name:)
              end

              sig { override.returns({action: String, label: String, name: String}) }
              def to_hash
              end
            end

            class Type < Knock::Enum
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
                  [[NilClass, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedContentBlock], [NilClass, Knock::Models::Users::FeedListItemsResponse::Block::MessageInAppFeedButtonSetBlock]]
                )
            end
            private def variants
            end
          end
        end

        class Source < Knock::BaseModel
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
            params(_typename: String, categories: T::Array[String], key: String, version_id: String).void
          end
          def initialize(_typename:, categories:, key:, version_id:)
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
