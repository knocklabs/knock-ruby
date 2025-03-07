# frozen_string_literal: true

module Knock
  module Models
    class UserUpdateParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute channel_data
      #   Allows inline setting channel data for a recipient
      #
      #   @return [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      optional :channel_data, -> { Knock::HashOf[Knock::Models::ChannelDataRequest] }, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute preferences
      #   Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @return [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      optional :preferences, -> { Knock::HashOf[Knock::Models::PreferenceSetRequest] }, nil?: true

      # @!parse
      #   # @param channel_data [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil]
      #   # @param created_at [Time, nil]
      #   # @param preferences [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(channel_data: nil, created_at: nil, preferences: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
