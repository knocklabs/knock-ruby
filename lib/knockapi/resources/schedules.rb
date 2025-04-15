# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      # Create schedules
      #
      # @overload create(request_options: {})
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleCreateParams
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/schedules",
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: params[:request_options]
        )
      end

      # Update schedules
      #
      # @overload update(request_options: {})
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleUpdateParams
      def update(params = {})
        @client.request(
          method: :put,
          path: "v1/schedules",
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: params[:request_options]
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
      # @param recipients [Array<String, Knockapi::Models::ScheduleListParams::Recipient::UnionMember1>]
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

      # Delete schedules
      #
      # @overload delete(request_options: {})
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Knockapi::Models::Schedule>]
      #
      # @see Knockapi::Models::ScheduleDeleteParams
      def delete(params = {})
        @client.request(
          method: :delete,
          path: "v1/schedules",
          model: Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule],
          options: params[:request_options]
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
