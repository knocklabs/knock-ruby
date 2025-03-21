# typed: strong

module Knockapi
  module Models
    class MessageGetContentResponse < Knockapi::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      # The contents of an email message
      sig do
        returns(
          T.any(
            Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
          )
        )
      end
      def data
      end

      sig do
        params(
          _: T.any(
            Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
          )
        )
          .returns(
            T.any(
              Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
              Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
              Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
              Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
              Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
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

      # The contents of a message
      sig do
        params(
          _typename: String,
          data: T.any(
            Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
            Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
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
                Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
              ),
              inserted_at: Time,
              message_id: String
            }
          )
      end
      def to_hash
      end

      # The contents of an email message
      module Data
        extend Knockapi::Union

        Variants =
          type_template(:out) do
            {
              fixed: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent,
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent
              )
            }
          end

        class MessageEmailContent < Knockapi::BaseModel
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

          # The contents of an email message
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

        class MessageSMSContent < Knockapi::BaseModel
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

          # The contents of an SMS message
          sig { params(_typename: String, body: String, to: String).returns(T.attached_class) }
          def self.new(_typename:, body:, to:)
          end

          sig { override.returns({_typename: String, body: String, to: String}) }
          def to_hash
          end
        end

        class MessagePushContent < Knockapi::BaseModel
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

          # The contents of a push message
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

        class MessageChatContent < Knockapi::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          # The channel data connection from the recipient to the underlying provider
          sig { returns(T::Hash[Symbol, T.anything]) }
          def connection
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def connection=(_)
          end

          sig { returns(Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template) }
          def template
          end

          sig do
            params(
              _: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                Knockapi::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                  Knockapi::Util::AnyHash
                )
              )
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

          # The contents of a chat message
          sig do
            params(
              _typename: String,
              connection: T::Hash[Symbol, T.anything],
              template: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
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
                  template: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                  metadata: T.nilable(T::Hash[Symbol, T.anything])
                }
              )
          end
          def to_hash
          end

          class Template < Knockapi::BaseModel
            # The structured blocks of the message
            sig do
              returns(
                T.nilable(
                  T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                )
              )
            end
            def blocks
            end

            sig do
              params(
                _: T.nilable(
                  T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                )
              )
                .returns(
                  T.nilable(
                    T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                  )
                )
            end
            def blocks=(_)
            end

            # The JSON content of the message
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
                blocks: T.nilable(
                  T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                ),
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
                    blocks: T.nilable(
                      T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                    ),
                    json_content: T.nilable(T::Hash[Symbol, T.anything]),
                    summary: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Block < Knockapi::BaseModel
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

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                )
              end
              def type
              end

              sig do
                params(
                  _: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                )
                  .returns(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                  )
              end
              def type=(_)
              end

              # A block in a chat message
              sig do
                params(
                  content: String,
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(content:, name:, type:)
              end

              sig do
                override
                  .returns(
                    {
                      content: String,
                      name: String,
                      type: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              module Type
                extend Knockapi::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                    )
                  end

                TEXT =
                  T.let(
                    :text,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                  )
                MARKDOWN =
                  T.let(
                    :markdown,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol]
                      )
                  end
                  def values
                  end
                end
              end
            end
          end
        end

        class MessageInAppFeedContent < Knockapi::BaseModel
          sig { returns(String) }
          def _typename
          end

          sig { params(_: String).returns(String) }
          def _typename=(_)
          end

          # The blocks of the message
          sig do
            returns(
              T::Array[
              T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
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
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
              )
              ]
            )
              .returns(
                T::Array[
                T.any(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                )
                ]
              )
          end
          def blocks=(_)
          end

          # The contents of a message in an app feed
          sig do
            params(
              _typename: String,
              blocks: T::Array[
              T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
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
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                  )
                  ]
                }
              )
          end
          def to_hash
          end

          # A content (text or markdown) block in a message in an app feed
          module Block
            extend Knockapi::Union

            Variants =
              type_template(:out) do
                {
                  fixed: T.any(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                  )
                }
              end

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

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )
              end
              def type
              end

              sig do
                params(
                  _: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )
                  .returns(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                  )
              end
              def type=(_)
              end

              # A content (text or markdown) block in a message in an app feed
              sig do
                params(
                  content: String,
                  name: String,
                  rendered: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
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
                      type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              module Type
                extend Knockapi::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                    )
                  end

                MARKDOWN =
                  T.let(
                    :markdown,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                  )
                TEXT =
                  T.let(
                    :text,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end

            class MessageInAppFeedButtonSetBlock < Knockapi::BaseModel
              sig do
                returns(
                  T::Array[
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ]
                )
              end
              def buttons
              end

              sig do
                params(
                  _: T::Array[
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ]
                )
                  .returns(
                    T::Array[
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
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

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                )
              end
              def type
              end

              sig do
                params(
                  _: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                )
                  .returns(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                  )
              end
              def type=(_)
              end

              # A set of buttons in a message in an app feed
              sig do
                params(
                  buttons: T::Array[
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ],
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
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
                      Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                      ],
                      name: String,
                      type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
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

              module Type
                extend Knockapi::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                    )
                  end

                BUTTON_SET =
                  T.let(
                    :button_set,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end

            class << self
              sig do
                override
                  .returns(
                    [Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock]
                  )
              end
              def variants
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]
              )
          end
          def variants
          end
        end
      end
    end
  end
end
