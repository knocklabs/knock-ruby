# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      # @return [Knockapi::Resources::Schedules::Bulk]
      attr_reader :bulk

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ScheduleCreateParams} for more details.
      #
      # Creates one or more schedules for a workflow with the specified recipients,
      # timing, and data. Schedules can be one-time or recurring. This endpoint also
      # handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      #
      # @overload create(recipients:, repeats:, workflow:, data: nil, ending_at: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #
      # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients to trigger the workflow for. Can inline identify users, objects,
      # ...
      #
      # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      # @param workflow [String] The key of the workflow.
      #
      # @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution.
      #
      # @param ending_at [Time, nil] The ending date and time for the schedule.
      #
      # @param scheduled_at [Time, nil] The starting date and time for the schedule.
      #
      # @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
      #
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

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::ScheduleUpdateParams} for more details.
      #
      # Updates one or more existing schedules with new timing, data, or other
      # properties. All specified schedule IDs will be updated with the same values.
      # This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `actor`, `recipient`, and `tenant` fields.
      #
      # @overload update(schedule_ids:, actor: nil, data: nil, ending_at: nil, repeats: nil, scheduled_at: nil, tenant: nil, request_options: {})
      #
      # @param schedule_ids [Array<String>] A list of schedule IDs.
      #
      # @param actor [String, Knockapi::Models::RecipientReference::ObjectReference, nil] A reference to a recipient, either a user identifier (string) or an object refer
      # ...
      #
      # @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution.
      #
      # @param ending_at [Time, nil] The ending date and time for the schedule.
      #
      # @param repeats [Array<Knockapi::Models::ScheduleRepeatRule>] The repeat rule for the schedule.
      #
      # @param scheduled_at [Time, nil] The starting date and time for the schedule.
      #
      # @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
      #
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
      # @param workflow [String] Filter by workflow key.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param recipients [Array<String>] Filter by recipient IDs.
      #
      # @param tenant [String] Filter by tenant ID.
      #
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
      # @param schedule_ids [Array<String>] A list of schedule IDs.
      #
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
        @bulk = Knockapi::Resources::Schedules::Bulk.new(client: client)
      end
    end
  end
end
