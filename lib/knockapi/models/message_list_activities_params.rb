# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_activities
    class MessageListActivitiesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute trigger_data
      #   The trigger data to filter activities by.
      #
      #   @return [String, nil]
      optional :trigger_data, String

      # @!method initialize(after: nil, before: nil, page_size: nil, trigger_data: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param page_size [Integer]
      #   @param trigger_data [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
