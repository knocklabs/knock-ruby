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

        # @!method initialize(guides:, recipient: nil)
        #   A response for a list of guides.
        #
        #   @param guides [Array<Knockapi::Models::Users::GuideGetChannelResponse::Guide>]
        #   @param recipient [Knockapi::Models::Users::GuideGetChannelResponse::Recipient, nil]

        class Guide < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the guide.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute content
          #   The content of the guide.
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute metadata
          #   The metadata of the guide.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :metadata, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

          # @!attribute title
          #   The title of the guide.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(id: nil, content: nil, metadata: nil, title: nil)
          #   @param id [String]
          #   @param content [String]
          #   @param metadata [Hash{Symbol=>Object}]
          #   @param title [String]
        end

        # @see Knockapi::Models::Users::GuideGetChannelResponse#recipient
        class Recipient < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the recipient.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   The recipient of the guide.
          #
          #   @param id [String]
        end
      end
    end
  end
end
