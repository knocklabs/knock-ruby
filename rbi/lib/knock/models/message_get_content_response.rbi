# typed: strong

module Knock
  module Models
    class MessageGetContentResponse < Knock::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig do
        returns(
          T.any(
            Knock::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knock::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knock::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knock::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
          )
        )
      end
      def data
      end

      sig do
        params(
          _: T.any(
            Knock::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knock::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knock::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knock::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
          )
        )
          .returns(
            T.any(
              Knock::Models::MessageGetContentResponse::Data::MessageEmailContent,
              Knock::Models::MessageGetContentResponse::Data::MessageSMSContent,
              Knock::Models::MessageGetContentResponse::Data::MessagePushContent,
              Knock::Models::MessageGetContentResponse::Data::MessageChatContent,
              Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
            )
          )
      end
      def data=(_)
      end

      sig { returns(Time) }
      def inserted_at
      end

      sig { params(_: Time).returns(Time) }
      def inserted_at=(_)
      end

      sig { returns(String) }
      def message_id
      end

      sig { params(_: String).returns(String) }
      def message_id=(_)
      end

      sig do
        params(
          _typename: String,
          data: T.any(
            Knock::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knock::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knock::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knock::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
          ),
          inserted_at: Time,
          message_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(_typename:, data:, inserted_at:, message_id:)
      end

      sig do
        override
          .returns(
            {
              _typename: String,
              data: T.any(
                Knock::Models::MessageGetContentResponse::Data::MessageEmailContent,
                Knock::Models::MessageGetContentResponse::Data::MessageSMSContent,
                Knock::Models::MessageGetContentResponse::Data::MessagePushContent,
                Knock::Models::MessageGetContentResponse::Data::MessageChatContent,
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
              ),
              inserted_at: Time,
              message_id: String
            }
          )
      end
      def to_hash
      end

      class Data < Knock::Union
        abstract!

        class MessageEmailContent < Knock::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig { returns(String) }
          def from
          end

          sig { params(_: String).returns(String) }
          def from=(_)
          end

          sig { returns(String) }
          def html_body
          end

          sig { params(_: String).returns(String) }
          def html_body=(_)
          end

          sig { returns(String) }
          def subject_line
          end

          sig { params(_: String).returns(String) }
          def subject_line=(_)
          end

          sig { returns(String) }
          def text_body
          end

          sig { params(_: String).returns(String) }
          def text_body=(_)
          end

          sig { returns(String) }
          def to
          end

          sig { params(_: String).returns(String) }
          def to=(_)
          end

          sig { returns(T.nilable(String)) }
          def bcc
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def bcc=(_)
          end

          sig { returns(T.nilable(String)) }
          def cc
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def cc=(_)
          end

          sig { returns(T.nilable(String)) }
          def reply_to
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def reply_to=(_)
          end

          sig do
            params(
              _typename: String,
              from: String,
              html_body: String,
              subject_line: String,
              text_body: String,
              to: String,
              bcc: T.nilable(String),
              cc: T.nilable(String),
              reply_to: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(_typename:, from:, html_body:, subject_line:, text_body:, to:, bcc: nil, cc: nil, reply_to: nil)
          end

          sig do
            override
              .returns(
                {
                  _typename: String,
                  from: String,
                  html_body: String,
                  subject_line: String,
                  text_body: String,
                  to: String,
                  bcc: T.nilable(String),
                  cc: T.nilable(String),
                  reply_to: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end

        class MessageSMSContent < Knock::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig { returns(String) }
          def body
          end

          sig { params(_: String).returns(String) }
          def body=(_)
          end

          sig { returns(String) }
          def to
          end

          sig { params(_: String).returns(String) }
          def to=(_)
          end

          sig { params(_typename: String, body: String, to: String).returns(T.attached_class) }
          def self.new(_typename:, body:, to:)
          end

          sig { override.returns({_typename: String, body: String, to: String}) }
          def to_hash
          end
        end

        class MessagePushContent < Knock::BaseModel
          sig { returns(String) }
          def token
          end

          sig { params(_: String).returns(String) }
          def token=(_)
          end

          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig { returns(String) }
          def body
          end

          sig { params(_: String).returns(String) }
          def body=(_)
          end

          sig { returns(String) }
          def title
          end

          sig { params(_: String).returns(String) }
          def title=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def data
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
          end
          def data=(_)
          end

          sig do
            params(
              token: String,
              _typename: String,
              body: String,
              title: String,
              data: T.nilable(T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(token:, _typename:, body:, title:, data: nil)
          end

          sig do
            override
              .returns(
                {
                  token: String,
                  _typename: String,
                  body: String,
                  title: String,
                  data: T.nilable(T::Hash[Symbol, T.anything])
                }
              )
          end
          def to_hash
          end
        end

        class MessageChatContent < Knock::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def connection
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def connection=(_)
          end

          sig { returns(Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template) }
          def template
          end

          sig do
            params(_: Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template)
              .returns(Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template)
          end
          def template=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
          end
          def metadata=(_)
          end

          sig do
            params(
              _typename: String,
              connection: T::Hash[Symbol, T.anything],
              template: Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
              metadata: T.nilable(T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(_typename:, connection:, template:, metadata: nil)
          end

          sig do
            override
              .returns(
                {
                  _typename: String,
                  connection: T::Hash[Symbol, T.anything],
                  template: Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                  metadata: T.nilable(T::Hash[Symbol, T.anything])
                }
              )
          end
          def to_hash
          end

          class Template < Knock::BaseModel
            sig do
              returns(
                T.nilable(T::Array[Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block])
              )
            end
            def blocks
            end

            sig do
              params(
                _: T.nilable(T::Array[Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block])
              )
                .returns(
                  T.nilable(T::Array[Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block])
                )
            end
            def blocks=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            def json_content
            end

            sig do
              params(
                _: T.nilable(
                  T::Hash[Symbol,
                          T.anything]
                )
              ).returns(T.nilable(T::Hash[Symbol, T.anything]))
            end
            def json_content=(_)
            end

            sig { returns(T.nilable(String)) }
            def summary
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def summary=(_)
            end

            sig do
              params(
                blocks: T.nilable(T::Array[Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]),
                json_content: T.nilable(T::Hash[Symbol, T.anything]),
                summary: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(blocks: nil, json_content: nil, summary: nil)
            end

            sig do
              override
                .returns(
                  {
                    blocks: T.nilable(T::Array[Knock::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]),
                    json_content: T.nilable(T::Hash[Symbol, T.anything]),
                    summary: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Block < Knock::BaseModel
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

              sig { returns(Symbol) }
              def type
              end

              sig { params(_: Symbol).returns(Symbol) }
              def type=(_)
              end

              sig { params(content: String, name: String, type: Symbol).returns(T.attached_class) }
              def self.new(content:, name:, type:)
              end

              sig { override.returns({content: String, name: String, type: Symbol}) }
              def to_hash
              end

              class Type < Knock::Enum
                abstract!

                TEXT = :text
                MARKDOWN = :markdown

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end
        end

        class MessageInAppFeedContent < Knock::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          sig do
            returns(
              T::Array[
              T.any(
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
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
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
              )
              ]
            )
              .returns(
                T::Array[
                T.any(
                  Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                  Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                )
                ]
              )
          end
          def blocks=(_)
          end

          sig do
            params(
              _typename: String,
              blocks: T::Array[
              T.any(
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
              )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(_typename:, blocks:)
          end

          sig do
            override
              .returns(
                {
                  _typename: String,
                  blocks: T::Array[
                  T.any(
                    Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                    Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                  )
                  ]
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

              sig do
                params(
                  content: String,
                  name: String,
                  rendered: String,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(content:, name:, rendered:, type:)
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
                  T::Array[
                  Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ]
                )
              end
              def buttons
              end

              sig do
                params(
                  _: T::Array[
                  Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ]
                )
                  .returns(
                    T::Array[
                    Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                    ]
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
                  buttons: T::Array[
                  Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ],
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
                      buttons: T::Array[
                      Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                      ],
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

                sig { params(action: String, label: String, name: String).returns(T.attached_class) }
                def self.new(action:, label:, name:)
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
                    [[NilClass, Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock], [NilClass, Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock]]
                  )
              end
              private def variants
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [[NilClass, Knock::Models::MessageGetContentResponse::Data::MessageEmailContent], [NilClass, Knock::Models::MessageGetContentResponse::Data::MessageSMSContent], [NilClass, Knock::Models::MessageGetContentResponse::Data::MessagePushContent], [NilClass, Knock::Models::MessageGetContentResponse::Data::MessageChatContent], [NilClass, Knock::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
