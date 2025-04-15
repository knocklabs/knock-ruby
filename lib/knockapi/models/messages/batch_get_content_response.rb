# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      class BatchGetContentResponseItem < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute data
        #   The contents of an email message
        #
        #   @return [Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageEmailContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageSMSContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessagePushContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent]
        required :data, union: -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data }

        # @!attribute inserted_at
        #
        #   @return [Time]
        required :inserted_at, Time

        # @!attribute message_id
        #
        #   @return [String]
        required :message_id, String

        # @!parse
        #   # The contents of a message
        #   #
        #   # @param _typename [String]
        #   # @param data [Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageEmailContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageSMSContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessagePushContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent]
        #   # @param inserted_at [Time]
        #   # @param message_id [String]
        #   #
        #   def initialize(_typename:, data:, inserted_at:, message_id:, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # The contents of an email message
        #
        # @see Knockapi::Models::Messages::BatchGetContentResponseItem#data
        module Data
          extend Knockapi::Internal::Type::Union

          # The contents of an email message
          variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageEmailContent }

          # The contents of an SMS message
          variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageSMSContent }

          # The contents of a push message
          variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessagePushContent }

          # The contents of a chat message
          variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent }

          # The contents of a message in an app feed
          variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent }

          class MessageEmailContent < Knockapi::Internal::Type::BaseModel
            # @!attribute _typename
            #
            #   @return [String]
            required :_typename, String, api_name: :__typename

            # @!attribute from
            #
            #   @return [String]
            required :from, String

            # @!attribute html_body
            #
            #   @return [String]
            required :html_body, String

            # @!attribute subject_line
            #
            #   @return [String]
            required :subject_line, String

            # @!attribute text_body
            #
            #   @return [String]
            required :text_body, String

            # @!attribute to
            #
            #   @return [String]
            required :to, String

            # @!attribute bcc
            #
            #   @return [String, nil]
            optional :bcc, String, nil?: true

            # @!attribute cc
            #
            #   @return [String, nil]
            optional :cc, String, nil?: true

            # @!attribute reply_to
            #
            #   @return [String, nil]
            optional :reply_to, String, nil?: true

            # @!parse
            #   # The contents of an email message
            #   #
            #   # @param _typename [String]
            #   # @param from [String]
            #   # @param html_body [String]
            #   # @param subject_line [String]
            #   # @param text_body [String]
            #   # @param to [String]
            #   # @param bcc [String, nil]
            #   # @param cc [String, nil]
            #   # @param reply_to [String, nil]
            #   #
            #   def initialize(_typename:, from:, html_body:, subject_line:, text_body:, to:, bcc: nil, cc: nil, reply_to: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class MessageSMSContent < Knockapi::Internal::Type::BaseModel
            # @!attribute _typename
            #
            #   @return [String]
            required :_typename, String, api_name: :__typename

            # @!attribute body
            #
            #   @return [String]
            required :body, String

            # @!attribute to
            #
            #   @return [String]
            required :to, String

            # @!parse
            #   # The contents of an SMS message
            #   #
            #   # @param _typename [String]
            #   # @param body [String]
            #   # @param to [String]
            #   #
            #   def initialize(_typename:, body:, to:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class MessagePushContent < Knockapi::Internal::Type::BaseModel
            # @!attribute token
            #
            #   @return [String]
            required :token, String

            # @!attribute _typename
            #
            #   @return [String]
            required :_typename, String, api_name: :__typename

            # @!attribute body
            #
            #   @return [String]
            required :body, String

            # @!attribute title
            #
            #   @return [String]
            required :title, String

            # @!attribute data
            #
            #   @return [Object, nil]
            optional :data, Knockapi::Internal::Type::Unknown, nil?: true

            # @!parse
            #   # The contents of a push message
            #   #
            #   # @param token [String]
            #   # @param _typename [String]
            #   # @param body [String]
            #   # @param title [String]
            #   # @param data [Object, nil]
            #   #
            #   def initialize(token:, _typename:, body:, title:, data: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          class MessageChatContent < Knockapi::Internal::Type::BaseModel
            # @!attribute _typename
            #
            #   @return [String]
            required :_typename, String, api_name: :__typename

            # @!attribute connection
            #   The channel data connection from the recipient to the underlying provider
            #
            #   @return [Object]
            required :connection, Knockapi::Internal::Type::Unknown

            # @!attribute template
            #
            #   @return [Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template]
            required :template,
                     -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template }

            # @!attribute metadata
            #
            #   @return [Object, nil]
            optional :metadata, Knockapi::Internal::Type::Unknown, nil?: true

            # @!parse
            #   # The contents of a chat message
            #   #
            #   # @param _typename [String]
            #   # @param connection [Object]
            #   # @param template [Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template]
            #   # @param metadata [Object, nil]
            #   #
            #   def initialize(_typename:, connection:, template:, metadata: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

            # @see Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent#template
            class Template < Knockapi::Internal::Type::BaseModel
              # @!attribute blocks
              #   The structured blocks of the message
              #
              #   @return [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block>, nil]
              optional :blocks,
                       -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block] },
                       nil?: true

              # @!attribute json_content
              #   The JSON content of the message
              #
              #   @return [Object, nil]
              optional :json_content, Knockapi::Internal::Type::Unknown, nil?: true

              # @!attribute summary
              #
              #   @return [String, nil]
              optional :summary, String, nil?: true

              # @!parse
              #   # @param blocks [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block>, nil]
              #   # @param json_content [Object, nil]
              #   # @param summary [String, nil]
              #   #
              #   def initialize(blocks: nil, json_content: nil, summary: nil, **) = super

              # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

              class Block < Knockapi::Internal::Type::BaseModel
                # @!attribute content
                #
                #   @return [String]
                required :content, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!attribute type
                #
                #   @return [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block::Type]
                required :type,
                         enum: -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block::Type }

                # @!parse
                #   # A block in a chat message
                #   #
                #   # @param content [String]
                #   # @param name [String]
                #   # @param type [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block::Type]
                #   #
                #   def initialize(content:, name:, type:, **) = super

                # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

                # @see Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent::Template::Block#type
                module Type
                  extend Knockapi::Internal::Type::Enum

                  TEXT = :text
                  MARKDOWN = :markdown

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end
            end
          end

          class MessageInAppFeedContent < Knockapi::Internal::Type::BaseModel
            # @!attribute _typename
            #
            #   @return [String]
            required :_typename, String, api_name: :__typename

            # @!attribute blocks
            #   The blocks of the message
            #
            #   @return [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock>]
            required :blocks,
                     -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block] }

            # @!parse
            #   # The contents of a message in an app feed
            #   #
            #   # @param _typename [String]
            #   # @param blocks [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock>]
            #   #
            #   def initialize(_typename:, blocks:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

            # A content (text or markdown) block in a message in an app feed
            module Block
              extend Knockapi::Internal::Type::Union

              # A content (text or markdown) block in a message in an app feed
              variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock }

              # A set of buttons in a message in an app feed
              variant -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock }

              class ContentBlock < Knockapi::Internal::Type::BaseModel
                # @!attribute content
                #
                #   @return [String]
                required :content, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!attribute rendered
                #
                #   @return [String]
                required :rendered, String

                # @!attribute type
                #
                #   @return [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock::Type]
                required :type,
                         enum: -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock::Type }

                # @!parse
                #   # A content (text or markdown) block in a message in an app feed
                #   #
                #   # @param content [String]
                #   # @param name [String]
                #   # @param rendered [String]
                #   # @param type [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock::Type]
                #   #
                #   def initialize(content:, name:, rendered:, type:, **) = super

                # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

                # @see Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock#type
                module Type
                  extend Knockapi::Internal::Type::Enum

                  MARKDOWN = :markdown
                  TEXT = :text

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end

              class ButtonSetBlock < Knockapi::Internal::Type::BaseModel
                # @!attribute buttons
                #
                #   @return [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Button>]
                required :buttons,
                         -> do
                           Knockapi::Internal::Type::ArrayOf[
                             Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Button
                           ]
                         end

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!attribute type
                #
                #   @return [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Type]
                required :type,
                         enum: -> { Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Type }

                # @!parse
                #   # A set of buttons in a message in an app feed
                #   #
                #   # @param buttons [Array<Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Button>]
                #   # @param name [String]
                #   # @param type [Symbol, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock::Type]
                #   #
                #   def initialize(buttons:, name:, type:, **) = super

                # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

                class Button < Knockapi::Internal::Type::BaseModel
                  # @!attribute action
                  #
                  #   @return [String]
                  required :action, String

                  # @!attribute label
                  #
                  #   @return [String]
                  required :label, String

                  # @!attribute name
                  #
                  #   @return [String]
                  required :name, String

                  # @!parse
                  #   # A button in a set of buttons
                  #   #
                  #   # @param action [String]
                  #   # @param label [String]
                  #   # @param name [String]
                  #   #
                  #   def initialize(action:, label:, name:, **) = super

                  # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
                end

                # @see Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock#type
                module Type
                  extend Knockapi::Internal::Type::Enum

                  BUTTON_SET = :button_set

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end

              # @!parse
              #   # @return [Array(Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ContentBlock, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent::Block::ButtonSetBlock)]
              #   def self.variants; end
            end
          end

          # @!parse
          #   # @return [Array(Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageEmailContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageSMSContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessagePushContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageChatContent, Knockapi::Models::Messages::BatchGetContentResponseItem::Data::MessageInAppFeedContent)]
          #   def self.variants; end
        end
      end

      BatchGetContentResponse =
        Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Messages::BatchGetContentResponseItem }]
    end
  end
end
