# typed: strong

module Knockapi
  module Models
    class MessageGetContentResponse < Knockapi::Internal::Type::BaseModel
      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # Content data specific to the channel type.
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

      # Timestamp when the message content was created.
      sig { returns(Time) }
      attr_accessor :inserted_at

      # The unique identifier for the message content.
      sig { returns(String) }
      attr_accessor :message_id

      # The content of a message.
      sig do
        params(
          _typename: String,
          data: T.any(
            Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent,
            Knockapi::Internal::AnyHash,
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
      def self.new(_typename:, data:, inserted_at:, message_id:); end

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
      def to_hash; end

      # Content data specific to the channel type.
      module Data
        extend Knockapi::Internal::Type::Union

        class MessageEmailContent < Knockapi::Internal::Type::BaseModel
          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # The sender's email address.
          sig { returns(String) }
          attr_accessor :from

          # The HTML body of the email message.
          sig { returns(String) }
          attr_accessor :html_body

          # The subject line of the email message.
          sig { returns(String) }
          attr_accessor :subject_line

          # The text body of the email message.
          sig { returns(String) }
          attr_accessor :text_body

          # The recipient's email address.
          sig { returns(String) }
          attr_accessor :to

          # The BCC email addresses.
          sig { returns(T.nilable(String)) }
          attr_accessor :bcc

          # The CC email addresses.
          sig { returns(T.nilable(String)) }
          attr_accessor :cc

          # The reply-to email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :reply_to

          # The content of an email message.
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
          def self.new(
            _typename:,
            from:,
            html_body:,
            subject_line:,
            text_body:,
            to:,
            bcc: nil,
            cc: nil,
            reply_to: nil
          )
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
          def to_hash; end
        end

        class MessageSMSContent < Knockapi::Internal::Type::BaseModel
          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # The content body of the SMS message.
          sig { returns(String) }
          attr_accessor :body

          # The phone number the SMS was sent to.
          sig { returns(String) }
          attr_accessor :to

          # The content of an SMS message.
          sig { params(_typename: String, body: String, to: String).returns(T.attached_class) }
          def self.new(_typename:, body:, to:); end

          sig { override.returns({_typename: String, body: String, to: String}) }
          def to_hash; end
        end

        class MessagePushContent < Knockapi::Internal::Type::BaseModel
          # The device token to send the push notification to.
          sig { returns(String) }
          attr_accessor :token

          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # The content body of the push notification.
          sig { returns(String) }
          attr_accessor :body

          # The title of the push notification.
          sig { returns(String) }
          attr_accessor :title

          # Additional data payload for the push notification.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :data

          # The content of a push notification.
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
          def self.new(token:, _typename:, body:, title:, data: nil); end

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
          def to_hash; end
        end

        class MessageChatContent < Knockapi::Internal::Type::BaseModel
          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # The channel data connection from the recipient to the underlying provider.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :connection

          # The template structure for the chat message.
          sig { returns(Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template) }
          attr_reader :template

          sig do
            params(
              template: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                Knockapi::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :template

          # Additional metadata associated with the chat message.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :metadata

          # The content of a chat message.
          sig do
            params(
              _typename: String,
              connection: T::Hash[Symbol, T.anything],
              template: T.any(
                Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template,
                Knockapi::Internal::AnyHash
              ),
              metadata: T.nilable(T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(_typename:, connection:, template:, metadata: nil); end

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
          def to_hash; end

          class Template < Knockapi::Internal::Type::BaseModel
            # The blocks of the message in a chat.
            sig do
              returns(
                T.nilable(
                  T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block]
                )
              )
            end
            attr_accessor :blocks

            # The JSON content of the message.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :json_content

            # The summary of the chat message.
            sig { returns(T.nilable(String)) }
            attr_accessor :summary

            # The template structure for the chat message.
            sig do
              params(
                blocks: T.nilable(
                  T::Array[
                    T.any(
                      Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block,
                      Knockapi::Internal::AnyHash
                    )
                  ]
                ),
                json_content: T.nilable(T::Hash[Symbol, T.anything]),
                summary: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(blocks: nil, json_content: nil, summary: nil); end

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
            def to_hash; end

            class Block < Knockapi::Internal::Type::BaseModel
              # The actual content of the block.
              sig { returns(String) }
              attr_accessor :content

              # The name of the block for identification.
              sig { returns(String) }
              attr_accessor :name

              # The type of block in a message in a chat (text or markdown).
              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A block in a message in a chat.
              sig do
                params(
                  content: String,
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(content:, name:, type:); end

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
              def to_hash; end

              # The type of block in a message in a chat (text or markdown).
              module Type
                extend Knockapi::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

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

                sig do
                  override
                    .returns(
                      T::Array[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type::TaggedSymbol]
                    )
                end
                def self.values; end
              end
            end
          end
        end

        class MessageInAppFeedContent < Knockapi::Internal::Type::BaseModel
          # The typename of the schema.
          sig { returns(String) }
          attr_accessor :_typename

          # The blocks of the message in an app feed.
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

          # The content of an in-app feed message.
          sig do
            params(
              _typename: String,
              blocks: T::Array[
                T.any(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock,
                  Knockapi::Internal::AnyHash,
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(_typename:, blocks:); end

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
          def to_hash; end

          # A block in a message in an app feed.
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
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A block in a message in an app feed.
              sig do
                params(
                  content: String,
                  name: String,
                  rendered: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(content:, name:, rendered:, type:); end

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
              def to_hash; end

              # The type of block in a message in an app feed.
              module Type
                extend Knockapi::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

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

                sig do
                  override
                    .returns(
                      T::Array[
                        Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class MessageInAppFeedButtonSetBlock < Knockapi::Internal::Type::BaseModel
              # A list of buttons in an in app feed message.
              sig do
                returns(
                  T::Array[
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                  ]
                )
              end
              attr_accessor :buttons

              # The name of the button set in a message in an app feed.
              sig { returns(String) }
              attr_accessor :name

              # The type of block in a message in an app feed.
              sig do
                returns(
                  Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # A button set block in a message in an app feed.
              sig do
                params(
                  buttons: T::Array[
                    T.any(
                      Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button,
                      Knockapi::Internal::AnyHash
                    )
                  ],
                  name: String,
                  type: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(buttons:, name:, type:); end

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
                def self.new(action:, label:, name:); end

                sig { override.returns({action: String, label: String, name: String}) }
                def to_hash; end
              end

              # The type of block in a message in an app feed.
              module Type
                extend Knockapi::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type)
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                BUTTON_SET =
                  T.let(
                    :button_set,
                    Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            sig do
              override
                .returns(
                  [Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock]
                )
            end
            def self.variants; end
          end
        end

        sig do
          override
            .returns(
              [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]
            )
        end
        def self.variants; end
      end
    end
  end
end
