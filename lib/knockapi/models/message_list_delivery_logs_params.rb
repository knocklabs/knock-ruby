# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_delivery_logs
    class MessageListDeliveryLogsParams < Knockapi::Internal::Type::BaseModel
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
      #   The number of items per page (defaults to 50).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(after: nil, before: nil, page_size: nil, request_options: {})
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param page_size [Integer] The number of items per page (defaults to 50).
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
