# frozen_string_literal: true

module Knock
  module Models
    class ObjectSetParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      optional :channel_data, -> { Knock::HashOf[Knock::Models::ChannelDataRequest] }, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      optional :preferences, -> { Knock::HashOf[Knock::Models::PreferenceSetRequest] }, nil?: true

      # @!parse
      #   # @param collection [String]
      #   # @param channel_data [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      #   # @param preferences [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, channel_data: nil, preferences: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
