# frozen_string_literal: true

module Knockapi
  module Internal
    module Type
      # This module provides a base implementation for paginated responses in the SDK.
      module BasePage
        # rubocop:disable Lint/UnusedMethodArgument

        # @return [Boolean]
        def next_page? = (raise NotImplementedError)

        # @raise [Knockapi::Errors::APIError]
        # @return [Knockapi::Internal::Type::BasePage]
        def next_page = (raise NotImplementedError)

        # @param blk [Proc]
        #
        # @return [void]
        def auto_paging_each(&blk) = (raise NotImplementedError)

        # @return [Enumerable]
        def to_enum = super(:auto_paging_each)

        alias_method :enum_for, :to_enum

        # @api private
        #
        # @param client [Knockapi::Internal::Transport::BaseClient]
        # @param req [Hash{Symbol=>Object}]
        # @param headers [Hash{String=>String}, Net::HTTPHeader]
        # @param page_data [Object]
        def initialize(client:, req:, headers:, page_data:)
          @client = client
          @req = req
          super()
        end

        # rubocop:enable Lint/UnusedMethodArgument
      end
    end
  end
end
