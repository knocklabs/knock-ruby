# frozen_string_literal: true

require 'net/http'
require 'uri'

module Knock
  # Methods for interacting with workflows in Knock
  module Workflows
    class << self
      include Client

      # Triggers the workflow with the given key
      #
      # @param [String] key The workflow key
      # @param [String, Hash] actor The actor identifier (optional)
      # @param [Array<String, Hash>] recipients The recipient identifiers
      # @param [Hash] data The data to pass to the workflow
      # @param [String] cancellation_key An optional key to identify this workflow
      #  invocation for cancelling
      # @param [String, Hash] tenant An optional tenant identifier or a set of tenant attributes
      # @param [String] idempotency_key An optional idempotency key to prevent
      #  duplicate workflow invocations
      #
      # @return [Hash] A workflow trigger result
      def trigger(key:, recipients:, data: {}, actor: nil, cancellation_key: nil, tenant: nil, idempotency_key: nil)
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

      # Creates schedule instances for all recipients for the given
      # workflow.
      #
      # @param [String] key The workflow key
      # @param [Array<String, Hash>] recipients The recipient identifiers
      # @param [Array<Hash>] repeats The repeat rules for when to schedule the workflow run
      # @param [Hash] options Additional options for the schedule
      # @option options [String, Hash] :actor An optional actor identifier
      # @option options [Time, String, nil] :scheduled_at When the schedule should start
      # @option options [Time, String, nil] :ending_at When the schedule should end
      # @option options [Hash] :data Parameters to be used as variables
      # @option options [String, Hash] :tenant An optional tenant identifier

      def create_schedules(key:, recipients:, repeats:, options: {})
        attrs = {
          workflow: key,
          actor: options[:actor],
          recipients: recipients,
          repeats: repeats,
          data: options[:data] || {},
          tenant: options[:tenant],
          scheduled_at: options[:scheduled_at],
          ending_at: options[:ending_at]
        }

        request = post_request(
          auth: true,
          path: '/v1/schedules',
          body: attrs
        )

        execute_request(request: request)
      end

      # Updates schedule instances with the attributes passed as params
      #
      # @param [Array<String>] schedule_ids The ids of the schedules to be updated
      # @param [Hash] schedule_attrs The attributes to be used to update the schedules
      #   Possible attributes: actor, repeats, data, tenant, ending_at

      def update_schedules(schedule_ids:, schedule_attrs:)
        attrs = {
          schedule_ids: schedule_ids
        }

        attrs = attrs.merge(schedule_attrs)

        request = put_request(
          auth: true,
          path: '/v1/schedules',
          body: attrs
        )

        execute_request(request: request)
      end

      # Get paginated workflow schedules
      #
      # @param [String] key The workflow key
      # @param [Hash] opts Options to filter the results: recipients, tenant and pagination params
      def list_schedules(key:, opts: {})
        attrs = opts.merge(workflow: key)

        request = get_request(
          auth: true,
          path: '/v1/schedules',
          params: attrs
        )

        execute_request(request: request)
      end

      # Delete schedule instances
      #
      # @param [Array<String>] schedule_ids The ids of the schedules to be deleted
      def delete_schedules(schedule_ids:)
        attrs = {
          schedule_ids: schedule_ids
        }

        request = delete_request(
          auth: true,
          path: '/v1/schedules',
          body: attrs
        )

        execute_request(request: request)
      end
    end
  end
end
