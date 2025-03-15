# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      # Create schedules
      #
      # @param params [Knockapi::Models::ScheduleCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference>] :recipients
      #
      #   @option params [Array<Knockapi::Models::ScheduleRepeatRule>] :repeats
      #
      #   @option params [String] :workflow
      #
      #   @option params [Hash{Symbol=>Object}, nil] :data
      #
      #   @option params [Time, nil] :ending_at
      #
      #   @option params [Time, nil] :scheduled_at
      #
      #   @option params [String, Knockapi::Models::TenantRequest, nil] :tenant An inline tenant request
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Schedule>]
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
      # @param params [Knockapi::Models::ScheduleUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :schedule_ids
      #
      #   @option params [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil] :actor Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @option params [Hash{Symbol=>Object}, nil] :data
      #
      #   @option params [Time, nil] :ending_at
      #
      #   @option params [Array<Knockapi::Models::ScheduleRepeatRule>] :repeats
      #
      #   @option params [Time, nil] :scheduled_at
      #
      #   @option params [String, Knockapi::Models::TenantRequest, nil] :tenant An inline tenant request
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Schedule>]
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
      # @param params [Knockapi::Models::ScheduleListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :workflow Filter by workflow
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Array<String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference>] :recipients Filter by recipient
      #
      #   @option params [String] :tenant Filter by tenant
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Schedule>]
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
      # @param params [Knockapi::Models::ScheduleDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :schedule_ids
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Knockapi::Models::Schedule>]
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

      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
