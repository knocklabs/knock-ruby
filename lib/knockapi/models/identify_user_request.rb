# frozen_string_literal: true

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlineChannelDataRequestItem] },
               nil?: true

      # @!attribute created_at
      #   The creation date of the user from your system.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlinePreferenceSetRequestItem] },
               nil?: true

      # @!parse
      #   # A set of parameters to identify a user with. Does not include the user ID, as
      #   # that's specified elsewhere in the request. You can supply any additional
      #   # properties you'd like to upsert for the user.
      #   #
      #   # @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      #   #
      #   def initialize(channel_data: nil, created_at: nil, preferences: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
