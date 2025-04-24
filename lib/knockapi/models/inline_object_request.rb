# frozen_string_literal: true

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the object.
      #
      #   @return [String]
      required :id, String

      # @!attribute collection
      #   The collection this object belongs to.
      #
      #   @return [String]
      required :collection, String

      # @!attribute channel_data
      #   A request to set channel data for a type of channel inline.
      #
      #   @return [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      optional :channel_data,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlineChannelDataRequestItem] },
               nil?: true

      # @!attribute created_at
      #   Timestamp when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   A list of objects that specify the preferences for the user.
      #
      #   @return [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequest>, nil]
      optional :preferences,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlinePreferenceSetRequest] },
               nil?: true

      # @!method initialize(id:, collection:, channel_data: nil, created_at: nil, preferences: nil)
      #   A custom [Object](/concepts/objects) entity which belongs to a collection.
      #
      #   @param id [String]
      #   @param collection [String]
      #   @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      #   @param created_at [Time, nil]
      #   @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequest>, nil]
    end
  end
end
