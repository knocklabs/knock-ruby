# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#get_content
    class MessageContents < Knockapi::Internal::Type::BaseModel
      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute data
      #   Content data specific to the channel type.
      #
      #   @return [Knockapi::Models::MessageContents::Data::MessageEmailContent, Knockapi::Models::MessageContents::Data::MessageSMSContent, Knockapi::Models::MessageContents::Data::MessagePushContent, Knockapi::Models::MessageContents::Data::MessageChatContent, Knockapi::Models::MessageContents::Data::MessageInAppFeedContent]
      required :data, union: -> { Knockapi::MessageContents::Data }

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
      #   @param data [Knockapi::Models::MessageContents::Data::MessageEmailContent, Knockapi::Models::MessageContents::Data::MessageSMSContent, Knockapi::Models::MessageContents::Data::MessagePushContent, Knockapi::Models::MessageContents::Data::MessageChatContent, Knockapi::Models::MessageContents::Data::MessageInAppFeedContent] Content data specific to the channel type.
      #
      #   @param inserted_at [Time] Timestamp when the message content was created.
      #
      #   @param message_id [String] The unique identifier for the message content.

      # Content data specific to the channel type.
      #
      # @see Knockapi::Models::MessageContents#data
      module Data
        extend Knockapi::Internal::Type::Union

        # The content of an email message.
        variant -> { Knockapi::MessageContents::Data::MessageEmailContent }

        # The content of an SMS message.
        variant -> { Knockapi::MessageContents::Data::MessageSMSContent }

        # Push channel data.
        variant -> { Knockapi::MessageContents::Data::MessagePushContent }

        # The content of a chat message.
        variant -> { Knockapi::MessageContents::Data::MessageChatContent }

        # The content of an in-app feed message.
        variant -> { Knockapi::MessageContents::Data::MessageInAppFeedContent }

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
          #   Push channel data.
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
          #   @return [Knockapi::Models::MessageContents::Data::MessageChatContent::Template]
          required :template, -> { Knockapi::MessageContents::Data::MessageChatContent::Template }

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
          #   @param template [Knockapi::Models::MessageContents::Data::MessageChatContent::Template] The template structure for the chat message.
          #
          #   @param metadata [Hash{Symbol=>Object}, nil] Additional metadata associated with the chat message.

          # @see Knockapi::Models::MessageContents::Data::MessageChatContent#template
          class Template < Knockapi::Internal::Type::BaseModel
            # @!attribute blocks
            #   The blocks of the message in a chat.
            #
            #   @return [Array<Knockapi::Models::MessageContents::Data::MessageChatContent::Template::Block>, nil]
            optional :blocks,
                     -> {
                       Knockapi::Internal::Type::ArrayOf[Knockapi::MessageContents::Data::MessageChatContent::Template::Block]
                     },
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
            #   @param blocks [Array<Knockapi::Models::MessageContents::Data::MessageChatContent::Template::Block>, nil] The blocks of the message in a chat.
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
              #   @return [Symbol, Knockapi::Models::MessageContents::Data::MessageChatContent::Template::Block::Type]
              required :type, enum: -> { Knockapi::MessageContents::Data::MessageChatContent::Template::Block::Type }

              # @!method initialize(content:, name:, type:)
              #   A block in a message in a chat.
              #
              #   @param content [String] The actual content of the block.
              #
              #   @param name [String] The name of the block for identification.
              #
              #   @param type [Symbol, Knockapi::Models::MessageContents::Data::MessageChatContent::Template::Block::Type] The type of block in a message in a chat (text or markdown).

              # The type of block in a message in a chat (text or markdown).
              #
              # @see Knockapi::Models::MessageContents::Data::MessageChatContent::Template::Block#type
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
          #   @return [Array<Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock>]
          required :blocks,
                   -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::MessageContents::Data::MessageInAppFeedContent::Block] }

          # @!method initialize(_typename:, blocks:)
          #   The content of an in-app feed message.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param blocks [Array<Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock>] The blocks of the message in an app feed.

          # A block in a message in an app feed.
          module Block
            extend Knockapi::Internal::Type::Union

            # A block in a message in an app feed.
            variant -> { Knockapi::MessageInAppFeedContentBlock }

            # A button set block in a message in an app feed.
            variant -> { Knockapi::MessageInAppFeedButtonSetBlock }

            # @!method self.variants
            #   @return [Array(Knockapi::Models::MessageInAppFeedContentBlock, Knockapi::Models::MessageInAppFeedButtonSetBlock)]
          end
        end

        # @!method self.variants
        #   @return [Array(Knockapi::Models::MessageContents::Data::MessageEmailContent, Knockapi::Models::MessageContents::Data::MessageSMSContent, Knockapi::Models::MessageContents::Data::MessagePushContent, Knockapi::Models::MessageContents::Data::MessageChatContent, Knockapi::Models::MessageContents::Data::MessageInAppFeedContent)]
      end
    end
  end
end
