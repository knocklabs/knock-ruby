# frozen_string_literal: true

require 'net/http'
require 'uri'

module Knock
  # Methods for interacting with workflows in Knock
  module Workflows
    class << self
      include Base
      include Client

      # Triggers the workflow with the given key
      #
      # @param [String] key The workflow key
      # @param [String, Hash] actor The actor identifier (optional)
      # @param [Array<String, Hash>] recipients The recipient identifiers
      # @param [Hash] data The data to pass to the workflow
      # @param [String] cancellation_key An optional key to identify this workflow
      #  invocation for cancelling
      # @param [String] tenant An optional tenant identifier
      # @param [String] idempotency_key An optional idempotency key to prevent
      #  duplicate workflow invocations
      #
      # @return [Hash] A workflow trigger result
      def trigger(key:, actor:, recipients:, data: {}, cancellation_key: nil, tenant: nil, idempotency_key: nil)
        attrs = {
          actor: actor,
          recipients: recipients,
          data: data,
          cancellation_key: cancellation_key,
          tenant: tenant
        }

        request = post_request(
          auth: true,
          path: "/v1/workflows/#{key}/trigger",
          body: attrs,
          idempotency_key: idempotency_key
        )

        execute_request(request: request)
      end

      # Cancels the workflow with the given key and cancellation key
      #
      # @param [String] key The workflow key
      # @param [String] cancellation_key The cancellation key
      # @param [Array<String, Hash>] recipients The recipient identifiers
      #
      # @return [Hash] - Cancellation result
      def cancel(key:, cancellation_key:, recipients: nil)
        attrs = {
          cancellation_key: cancellation_key,
          recipients: recipients
        }

        request = post_request(
          auth: true,
          path: "/v1/workflows/#{key}/cancel",
          body: attrs
        )

        execute_request(request: request)
      end
    end
  end
end
