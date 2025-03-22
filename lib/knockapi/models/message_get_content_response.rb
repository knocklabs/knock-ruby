# frozen_string_literal: true

module Knockapi
  module Models
    class MessageGetContentResponse < Knockapi::BaseModel
      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute data
      #   The contents of an email message
      #
      #   @return [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]
      required :data, union: -> { Knockapi::Models::MessageGetContentResponse::Data }

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
      #   # @param data [Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent]
      #   # @param inserted_at [Time]
      #   # @param message_id [String]
      #   #
      #   def initialize(_typename:, data:, inserted_at:, message_id:, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # The contents of an email message
      module Data
        extend Knockapi::Union

        # The contents of an email message
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent }

        # The contents of an SMS message
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent }

        # The contents of a push message
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent }

        # The contents of a chat message
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent }

        # The contents of a message in an app feed
        variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent }

        class MessageEmailContent < Knockapi::BaseModel
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

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end

        class MessageSMSContent < Knockapi::BaseModel
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

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end

        class MessagePushContent < Knockapi::BaseModel
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
          #   @return [Hash{Symbol=>Object}, nil]
          optional :data, Knockapi::HashOf[Knockapi::Unknown], nil?: true

          # @!parse
          #   # The contents of a push message
          #   #
          #   # @param token [String]
          #   # @param _typename [String]
          #   # @param body [String]
          #   # @param title [String]
          #   # @param data [Hash{Symbol=>Object}, nil]
          #   #
          #   def initialize(token:, _typename:, body:, title:, data: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void
        end

        class MessageChatContent < Knockapi::BaseModel
          # @!attribute _typename
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute connection
          #   The channel data connection from the recipient to the underlying provider
          #
          #   @return [Hash{Symbol=>Object}]
          required :connection, Knockapi::HashOf[Knockapi::Unknown]

          # @!attribute template
          #
          #   @return [Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template]
          required :template, -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template }

          # @!attribute metadata
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Knockapi::HashOf[Knockapi::Unknown], nil?: true

          # @!parse
          #   # The contents of a chat message
          #   #
          #   # @param _typename [String]
          #   # @param connection [Hash{Symbol=>Object}]
          #   # @param template [Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template]
          #   # @param metadata [Hash{Symbol=>Object}, nil]
          #   #
          #   def initialize(_typename:, connection:, template:, metadata: nil, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void

          class Template < Knockapi::BaseModel
            # @!attribute blocks
            #   The structured blocks of the message
            #
            #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block>, nil]
            optional :blocks,
                     -> { Knockapi::ArrayOf[Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block] },
                     nil?: true

            # @!attribute json_content
            #   The JSON content of the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :json_content, Knockapi::HashOf[Knockapi::Unknown], nil?: true

            # @!attribute summary
            #
            #   @return [String, nil]
            optional :summary, String, nil?: true

            # @!parse
            #   # @param blocks [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block>, nil]
            #   # @param json_content [Hash{Symbol=>Object}, nil]
            #   # @param summary [String, nil]
            #   #
            #   def initialize(blocks: nil, json_content: nil, summary: nil, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void

            class Block < Knockapi::BaseModel
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
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type }

              # @!parse
              #   # A block in a chat message
              #   #
              #   # @param content [String]
              #   # @param name [String]
              #   # @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent::Template::Block::Type]
              #   #
              #   def initialize(content:, name:, type:, **) = super

              # def initialize: (Hash | Knockapi::BaseModel) -> void

              module Type
                extend Knockapi::Enum

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

        class MessageInAppFeedContent < Knockapi::BaseModel
          # @!attribute _typename
          #
          #   @return [String]
          required :_typename, String, api_name: :__typename

          # @!attribute blocks
          #   The blocks of the message
          #
          #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock>]
          required :blocks,
                   -> { Knockapi::ArrayOf[union: Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block] }

          # @!parse
          #   # The contents of a message in an app feed
          #   #
          #   # @param _typename [String]
          #   # @param blocks [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock>]
          #   #
          #   def initialize(_typename:, blocks:, **) = super

          # def initialize: (Hash | Knockapi::BaseModel) -> void

          # A content (text or markdown) block in a message in an app feed
          module Block
            extend Knockapi::Union

            # A content (text or markdown) block in a message in an app feed
            variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock }

            # A set of buttons in a message in an app feed
            variant -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock }

            class MessageInAppFeedContentBlock < Knockapi::BaseModel
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
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type }

              # @!parse
              #   # A content (text or markdown) block in a message in an app feed
              #   #
              #   # @param content [String]
              #   # @param name [String]
              #   # @param rendered [String]
              #   # @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock::Type]
              #   #
              #   def initialize(content:, name:, rendered:, type:, **) = super

              # def initialize: (Hash | Knockapi::BaseModel) -> void

              module Type
                extend Knockapi::Enum

                MARKDOWN = :markdown
                TEXT = :text

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class MessageInAppFeedButtonSetBlock < Knockapi::BaseModel
              # @!attribute buttons
              #
              #   @return [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button>]
              required :buttons,
                       -> do
                         Knockapi::ArrayOf[
                         Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button
                         ]
                       end

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute type
              #
              #   @return [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type]
              required :type,
                       enum: -> { Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type }

              # @!parse
              #   # A set of buttons in a message in an app feed
              #   #
              #   # @param buttons [Array<Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Button>]
              #   # @param name [String]
              #   # @param type [Symbol, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock::Type]
              #   #
              #   def initialize(buttons:, name:, type:, **) = super

              # def initialize: (Hash | Knockapi::BaseModel) -> void

              class Button < Knockapi::BaseModel
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

                # def initialize: (Hash | Knockapi::BaseModel) -> void
              end

              module Type
                extend Knockapi::Enum

                BUTTON_SET = :button_set

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @!parse
            #   # @return [Array(Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedContentBlock, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent::Block::MessageInAppFeedButtonSetBlock)]
            #   def self.variants; end
          end
        end

        # @!parse
        #   # @return [Array(Knockapi::Models::MessageGetContentResponse::Data::MessageEmailContent, Knockapi::Models::MessageGetContentResponse::Data::MessageSMSContent, Knockapi::Models::MessageGetContentResponse::Data::MessagePushContent, Knockapi::Models::MessageGetContentResponse::Data::MessageChatContent, Knockapi::Models::MessageGetContentResponse::Data::MessageInAppFeedContent)]
        #   def self.variants; end
      end
    end
  end
end
