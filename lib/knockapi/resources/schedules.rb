# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      # Create schedules
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
          model: Knockapi::ArrayOf[Knockapi::Models::Schedule],
          options: options
        )
      end

      # Update schedules
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
          model: Knockapi::ArrayOf[Knockapi::Models::Schedule],
          options: options
        )
      end

      # List schedules
      #
      # @overload list(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {})
      #
      # @param workflow [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param recipients [Array<String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference>]
      # @param tenant [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleListParams
      def list(params)
        parsed, options = Knockapi::Models::ScheduleListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/schedules",
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Schedule,
          options: options
        )
      end

      # Delete schedules
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
          model: Knockapi::ArrayOf[Knockapi::Models::Schedule],
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
