# typed: strong

module Knockapi
  module Models
    class MessageGetContentResponse < Knockapi::BaseModel
      sig { returns(String) }
      attr_accessor :_typename

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
      attr_accessor :data

      sig { returns(Time) }
      attr_accessor :inserted_at

      sig { returns(String) }
      attr_accessor :message_id

      # The contents of a message
      sig do
        params(
          _typename: String,
          data: T.any(
            Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knockapi::Util::AnyHash,
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
          attr_accessor :_typename

          sig { returns(String) }
          attr_accessor :from

          sig { returns(String) }
          attr_accessor :html_body

          sig { returns(String) }
          attr_accessor :subject_line

          sig { returns(String) }
          attr_accessor :text_body

          sig { returns(String) }
          attr_accessor :to

          sig { returns(T.nilable(String)) }
          attr_accessor :bcc

          sig { returns(T.nilable(String)) }
          attr_accessor :cc

          sig { returns(T.nilable(String)) }
          attr_accessor :reply_to

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
          attr_accessor :_typename

          sig { returns(String) }
          attr_accessor :body

          sig { returns(String) }
          attr_accessor :to

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
          attr_accessor :token

          sig { returns(String) }
          attr_accessor :_typename

          sig { returns(String) }
          attr_accessor :body

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :data

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
          attr_accessor :_typename

          # The channel data connection from the recipient to the underlying provider
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :connection

          sig { returns(Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template) }
          attr_reader :template

          sig do
            params(
              template: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                Knockapi::Util::AnyHash
              )
            )
              .void
          end
          attr_writer :template

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          # The contents of a chat message
          sig do
            params(
              _typename: String,
              connection: T::Hash[Symbol, T.anything],
              template: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                Knockapi::Util::AnyHash
              ),
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
            attr_accessor :blocks

            # The JSON content of the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :json_content

            sig { returns(T.nilable(String)) }
            attr_accessor :summary

            sig do
              params(
                blocks: T.nilable(
                  T::Array[
                  T.any(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block,
                    Knockapi::Util::AnyHash
                  )
                  ]
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
              attr_accessor :content

              sig { returns(String) }
              attr_accessor :name

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A block in a chat message
              sig do
                params(
                  content: String,
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::OrSymbol
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
          attr_accessor :_typename

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
          attr_accessor :blocks

          # The contents of a message in an app feed
          sig do
            params(
              _typename: String,
              blocks: T::Array[
              T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                Knockapi::Util::AnyHash,
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
              attr_accessor :content

              sig { returns(String) }
              attr_accessor :name

              sig { returns(String) }
              attr_accessor :rendered

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A content (text or markdown) block in a message in an app feed
              sig do
                params(
                  content: String,
                  name: String,
                  rendered: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::OrSymbol
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
              attr_accessor :buttons

              sig { returns(String) }
              attr_accessor :name

              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A set of buttons in a message in an app feed
              sig do
                params(
                  buttons: T::Array[
                  T.any(
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button,
                    Knockapi::Util::AnyHash
                  )
                  ],
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::OrSymbol
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
