# frozen_string_literal: true

module Knockapi
  module Models
    class ListSubscriptionsResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute entries
      #   A list of subscriptions.
      #
      #   @return [Array<Knockapi::Models::Recipients::Subscription>]
      required :entries, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::Subscription] }

      # @!attribute page_info
      #   Pagination information for a list of resources.
      #
      #   @return [Knockapi::Models::PageInfo]
      required :page_info, -> { Knockapi::PageInfo }

      # @!method initialize(entries:, page_info:)
      #   A response containing a list of subscriptions.
      #
      #   @param entries [Array<Knockapi::Models::Recipients::Subscription>] A list of subscriptions.
      #
      #   @param page_info [Knockapi::Models::PageInfo] Pagination information for a list of resources.
    end
  end
end
