# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#set
    class ObjectSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest] }

      # @!attribute locale
      #   The locale of the object. Used for
      #   [message localization](/concepts/translations).
      #
      #   @return [String, nil]
      optional :locale, String, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set id.
      #
      #   @return [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest] }

      # @!attribute timezone
      #   The timezone of the object. Must be a valid
      #   [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      #   Used for
      #   [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!method initialize(channel_data: nil, locale: nil, preferences: nil, timezone: nil, request_options: {})
      #   @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}]
      #   @param locale [String, nil]
      #   @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}]
      #   @param timezone [String, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
