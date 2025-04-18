# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#get_channel
      class GuideGetChannelResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute guides
        #   A list of guides.
        #
        #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::Guide>]
        required :guides,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Guide] }

        # @!attribute recipient
        #   The recipient of the guide.
        #
        #   @return [Knockapi::Models::Users::GuideGetChannelResponse::Recipient, nil]
        optional :recipient, -> { Knockapi::Models::Users::GuideGetChannelResponse::Recipient }, nil?: true

        # @!parse
        #   # A response for a list of guides.
        #   #
        #   # @param guides [Array<Knockapi::Models::Users::GuideGetChannelResponse::Guide>]
        #   # @param recipient [Knockapi::Models::Users::GuideGetChannelResponse::Recipient, nil]
        #   #
        #   def initialize(guides:, recipient: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        class Guide < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   The unique identifier for the guide.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!attribute [r] content
          #   The content of the guide.
          #
          #   @return [String, nil]
          optional :content, String

          # @!parse
          #   # @return [String]
          #   attr_writer :content

          # @!attribute [r] metadata
          #   The metadata of the guide.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

          # @!parse
          #   # @return [Hash{Symbol=>Object}]
          #   attr_writer :metadata

          # @!attribute [r] title
          #   The title of the guide.
          #
          #   @return [String, nil]
          optional :title, String

          # @!parse
          #   # @return [String]
          #   attr_writer :title

          # @!parse
          #   # @param id [String]
          #   # @param content [String]
          #   # @param metadata [Hash{Symbol=>Object}]
          #   # @param title [String]
          #   #
          #   def initialize(id: nil, content: nil, metadata: nil, title: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end

        # @see Knockapi::Models::Users::GuideGetChannelResponse#recipient
        class Recipient < Knockapi::Internal::Type::BaseModel
          # @!attribute [r] id
          #   Unique identifier for the recipient.
          #
          #   @return [String, nil]
          optional :id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :id

          # @!parse
          #   # The recipient of the guide.
          #   #
          #   # @param id [String]
          #   #
          #   def initialize(id: nil, **) = super

          # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
