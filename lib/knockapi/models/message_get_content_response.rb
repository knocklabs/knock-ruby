# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#get_content
    class MessageGetContentResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute data
      #   Content data specific to the channel type.
      #
      #   @return [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]
      required :data, union: -> { Knockapi::Models::MessageGetContentResponse::Data }

      # @!attribute inserted_at
      #   Timestamp when the message content was created.
      #
      #   @return [Time]
      required :inserted_at, Time

      # @!attribute message_id
      #   The unique identifier for the message content.
      #
      #   @return [String]
      required :message_id, String

      # @!method initialize(_typename:, data:, inserted_at:, message_id:)
      #   The content of a message.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param data [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent] Content data specific to the channel type.
      #
      #   @param inserted_at [Time] Timestamp when the message content was created.
      #
      #   @param message_id [String] The unique identifier for the message content.

      # Content data specific to the channel type.
      #
      # @see Knockapi::Models::MessageGetContentResponse#data
      module Data
        extend Knockapi::Internal::Type::Union

        # The content of an email message.
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent }

        # The content of an SMS message.
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent }

        # The content of a push notification.
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent }

        # The content of a chat message.
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent }

        # The content of an in-app feed message.
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent }

        class MessageEmailContent < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute from
          #   The sender's email address.
          #
          #   @return [String]
          required :from, String

          # @!attribute html_body
          #   The HTML body of the email message.
          #
          #   @return [String]
          required :html_body, String

          # @!attribute subject_line
          #   The subject line of the email message.
          #
          #   @return [String]
          required :subject_line, String

          # @!attribute text_body
          #   The text body of the email message.
          #
          #   @return [String]
          required :text_body, String

          # @!attribute to
          #   The recipient's email address.
          #
          #   @return [String]
          required :to, String

          # @!attribute bcc
          #   The BCC email addresses.
          #
          #   @return [String, nil]
          optional :bcc, String, nil?: true

          # @!attribute cc
          #   The CC email addresses.
          #
          #   @return [String, nil]
          optional :cc, String, nil?: true

          # @!attribute reply_to
          #   The reply-to email address.
          #
          #   @return [String, nil]
          optional :reply_to, String, nil?: true

          # @!method initialize(_typename:, from:, html_body:, subject_line:, text_body:, to:, bcc: nil, cc: nil, reply_to: nil)
          #   The content of an email message.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param from [String] The sender's email address.
          #
          #   @param html_body [String] The HTML body of the email message.
          #
          #   @param subject_line [String] The subject line of the email message.
          #
          #   @param text_body [String] The text body of the email message.
          #
          #   @param to [String] The recipient's email address.
          #
          #   @param bcc [String, nil] The BCC email addresses.
          #
          #   @param cc [String, nil] The CC email addresses.
          #
          #   @param reply_to [String, nil] The reply-to email address.
        end

        class MessageSMSContent < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute body
          #   The content body of the SMS message.
          #
          #   @return [String]
          required :body, String

          # @!attribute to
          #   The phone number the SMS was sent to.
          #
          #   @return [String]
          required :to, String

          # @!method initialize(_typename:, body:, to:)
          #   The content of an SMS message.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param body [String] The content body of the SMS message.
          #
          #   @param to [String] The phone number the SMS was sent to.
        end

        class MessagePushContent < Knockapi::Internal::Type::BaseModel
          # @!attribute token
          #   The device token to send the push notification to.
          #
          #   @return [String]
          required :token, String

          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute body
          #   The content body of the push notification.
          #
          #   @return [String]
          required :body, String

          # @!attribute title
          #   The title of the push notification.
          #
          #   @return [String]
          required :title, String

          # @!attribute data
          #   Additional data payload for the push notification.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

          # @!method initialize(token:, _typename:, body:, title:, data: nil)
          #   The content of a push notification.
          #
          #   @param token [String] The device token to send the push notification to.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param body [String] The content body of the push notification.
          #
          #   @param title [String] The title of the push notification.
          #
          #   @param data [Hash{Symbol=>Object}, nil] Additional data payload for the push notification.
        end

        class MessageChatContent < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute connection
          #   The channel data connection from the recipient to the underlying provider.
          #
          #   @return [Hash{Symbol=>Object}]
          required :connection, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

          # @!attribute template
          #   The template structure for the chat message.
          #
          #   @return [Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template]
          required :template, -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template }

          # @!attribute metadata
          #   Additional metadata associated with the chat message.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

          # @!method initialize(_typename:, connection:, template:, metadata: nil)
          #   The content of a chat message.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param connection [Hash{Symbol=>Object}] The channel data connection from the recipient to the underlying provider.
          #
          #   @param template [Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template] The template structure for the chat message.
          #
          #   @param metadata [Hash{Symbol=>Object}, nil] Additional metadata associated with the chat message.

          # @see Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent#template
          class Template < Knockapi::Internal::Type::BaseModel
            # @!attribute blocks
            #   The blocks of the message in a chat.
            #
            #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block>, nil]
            optional :blocks,
                     -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block] },
                     nil?: true

            # @!attribute json_content
            #   The JSON content of the message.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :json_content,
                     Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown],
                     nil?: true

            # @!attribute summary
            #   The summary of the chat message.
            #
            #   @return [String, nil]
            optional :summary, String, nil?: true

            # @!method initialize(blocks: nil, json_content: nil, summary: nil)
            #   The template structure for the chat message.
            #
            #   @param blocks [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block>, nil] The blocks of the message in a chat.
            #
            #   @param json_content [Hash{Symbol=>Object}, nil] The JSON content of the message.
            #
            #   @param summary [String, nil] The summary of the chat message.

            class Block < Knockapi::Internal::Type::BaseModel
              # @!attribute content
              #   The actual content of the block.
              #
              #   @return [String]
              required :content, String

              # @!attribute name
              #   The name of the block for identification.
              #
              #   @return [String]
              required :name, String

              # @!attribute type
              #   The type of block in a message in a chat (text or markdown).
              #
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type }

              # @!method initialize(content:, name:, type:)
              #   A block in a message in a chat.
              #
              #   @param content [String] The actual content of the block.
              #
              #   @param name [String] The name of the block for identification.
              #
              #   @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type] The type of block in a message in a chat (text or markdown).

              # The type of block in a message in a chat (text or markdown).
              #
              # @see Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block#type
              module Type
                extend Knockapi::Internal::Type::Enum

                TEXT = :text
                MARKDOWN = :markdown

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end

        class MessageInAppFeedContent < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute blocks
          #   The blocks of the message in an app feed.
          #
          #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock>]
          required :blocks,
                   -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block] }

          # @!method initialize(_typename:, blocks:)
          #   The content of an in-app feed message.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param blocks [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock>] The blocks of the message in an app feed.

          # A block in a message in an app feed.
          module Block
            extend Knockapi::Internal::Type::Union

            # A block in a message in an app feed.
            variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock }

            # A button set block in a message in an app feed.
            variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock }

            class MessageInAppFeedContentBlock < Knockapi::Internal::Type::BaseModel
              # @!attribute content
              #   The content of the block in a message in an app feed.
              #
              #   @return [String]
              required :content, String

              # @!attribute name
              #   The name of the block in a message in an app feed.
              #
              #   @return [String]
              required :name, String

              # @!attribute rendered
              #   The rendered HTML version of the content.
              #
              #   @return [String]
              required :rendered, String

              # @!attribute type
              #   The type of block in a message in an app feed.
              #
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type }

              # @!method initialize(content:, name:, rendered:, type:)
              #   A block in a message in an app feed.
              #
              #   @param content [String] The content of the block in a message in an app feed.
              #
              #   @param name [String] The name of the block in a message in an app feed.
              #
              #   @param rendered [String] The rendered HTML version of the content.
              #
              #   @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type] The type of block in a message in an app feed.

              # The type of block in a message in an app feed.
              #
              # @see Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock#type
              module Type
                extend Knockapi::Internal::Type::Enum

                MARKDOWN = :markdown
                TEXT = :text

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class MessageInAppFeedButtonSetBlock < Knockapi::Internal::Type::BaseModel
              # @!attribute buttons
              #   A list of buttons in an in app feed message.
              #
              #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button>]
              required :buttons,
                       -> do
                         Knockapi::Internal::Type::ArrayOf[
                           Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                         ]
                       end

              # @!attribute name
              #   The name of the button set in a message in an app feed.
              #
              #   @return [String]
              required :name, String

              # @!attribute type
              #   The type of block in a message in an app feed.
              #
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type }

              # @!method initialize(buttons:, name:, type:)
              #   A button set block in a message in an app feed.
              #
              #   @param buttons [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button>] A list of buttons in an in app feed message.
              #
              #   @param name [String] The name of the button set in a message in an app feed.
              #
              #   @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type] The type of block in a message in an app feed.

              class Button < Knockapi::Internal::Type::BaseModel
                # @!attribute action
                #   The action to take when the button is clicked.
                #
                #   @return [String]
                required :action, String

                # @!attribute label
                #   The label of the button.
                #
                #   @return [String]
                required :label, String

                # @!attribute name
                #   The name of the button.
                #
                #   @return [String]
                required :name, String

                # @!method initialize(action:, label:, name:)
                #   A button in an in app feed message.
                #
                #   @param action [String] The action to take when the button is clicked.
                #
                #   @param label [String] The label of the button.
                #
                #   @param name [String] The name of the button.
              end

              # The type of block in a message in an app feed.
              #
              # @see Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock#type
              module Type
                extend Knockapi::Internal::Type::Enum

                BUTTON_SET = :button_set

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock)]
          end
        end

        # @!method self.variants
        #   @return [Array(Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent)]
      end
    end
  end
end
