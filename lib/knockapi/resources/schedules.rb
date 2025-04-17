# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      # Creates one or more schedules for a workflow with the specified recipients,
      # timing, and data. Schedules can be one-time or recurring.
      #
      # @overload create(recipients:, repeats:, workflow:, data: nil, ending_at: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #
      # @param recipients [Array<String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference>]
      # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
      # @param workflow [String]
      # @param data [Hash{Symbol=>Object}, nil]
      # @param ending_at [Time, nil]
      # @param scheduled_at [Time, nil]
      # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleCreateParams
      def create(params)
        parsed, options = Knockapi::Models::ScheduleCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/schedules",
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: options
        )
      end

      # Updates one or more existing schedules with new timing, data, or other
      # properties. All specified schedule IDs will be updated with the same values.
      #
      # @overload update(schedule_ids:, actor: nil, data: nil, ending_at: nil, repeats: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #
      # @param schedule_ids [Array<String>]
      # @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      # @param data [Hash{Symbol=>Object}, nil]
      # @param ending_at [Time, nil]
      # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>]
      # @param scheduled_at [Time, nil]
      # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleUpdateParams
      def update(params)
        parsed, options = Knockapi::Models::ScheduleUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: "v1/schedules",
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: options
        )
      end

      # Returns a paginated list of schedules for the current environment, filtered by
      # workflow and optionally by recipients and tenant.
      #
      # @overload list(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {})
      #
      # @param workflow [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param recipients [Array<String>]
      # @param tenant [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleListParams
      def list(params)
        parsed, options = Knockapi::Models::ScheduleListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/schedules",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # Permanently deletes one or more schedules identified by the provided schedule
      # IDs. This operation cannot be undone.
      #
      # @overload delete(schedule_ids:, request_options: {})
      #
      # @param schedule_ids [Array<String>]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleDeleteParams
      def delete(params)
        parsed, options = Knockapi::Models::ScheduleDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: "v1/schedules",
          body: parsed,
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: options
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
