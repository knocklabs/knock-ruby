# frozen_string_literal: true

module Knockapi
  module Models
    module Objects
      # @see Knockapi::Resources::Objects::Bulk#set
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute objects
        #   A list of objects.
        #
        #   @return [Array<Knockapi::Models::Objects::BulkSetParams::Object>]
        required :objects, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Objects::BulkSetParams::Object] }

        # @!method initialize(objects:, request_options: {})
        #   @param objects [Array<Knockapi::Models::Objects::BulkSetParams::Object>] A list of objects.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class Object < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the object.
          #
          #   @return [String]
          required :id, String

          # @!attribute channel_data
          #   A request to set channel data for a type of channel inline.
          #
          #   @return [Hash{Symbol=>Knockapi::Models::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil]
          optional :channel_data,
                   -> {
                     Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::InlineChannelDataRequestItem]
                   },
                   nil?: true

          # @!attribute created_at
          #   Timestamp when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time, nil?: true

          # @!attribute preferences
          #   Inline set preferences for a recipient, where the key is the preference set id.
          #   Preferences that are set inline will be merged into any existing preferences
          #   rather than replacing them.
          #
          #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
          optional :preferences,
                   -> { Knockapi::Internal::Type::HashOf[Knockapi::Recipients::PreferenceSetRequest] },
                   nil?: true

          # @!method initialize(id:, channel_data: nil, created_at: nil, preferences: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Objects::BulkSetParams::Object} for more details.
          #
          #   A custom [Object](/concepts/objects) entity which belongs to a collection.
          #
          #   @param id [String] Unique identifier for the object.
          #
          #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] A request to set channel data for a type of channel inline.
          #
          #   @param created_at [Time, nil] Timestamp when the resource was created.
          #
          #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] Inline set preferences for a recipient, where the key is the preference set id.
        end
      end
    end
  end
end
