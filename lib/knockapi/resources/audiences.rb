# frozen_string_literal: true

module Knockapi
  module Resources
    class Audiences
      # Adds one or more members to the specified audience.
      #
      # @overload add_members(key, members:, request_options: {})
      #
      # @param key [String]
      # @param members [Array<Knockapi::Models::AudienceAddMembersParams::Member>]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::AudienceAddMembersParams
      def add_members(key, params)
        parsed, options = Knockapi::Models::AudienceAddMembersParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/audiences/%1$s/members", key],
          body: parsed,
          model: String,
          options: options
        )
      end

      # Returns a paginated list of members for the specified audience.
      #
      # @overload list_members(key, request_options: {})
      #
      # @param key [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::AudienceListMembersResponse]
      #
      # @see Knockapi::Models::AudienceListMembersParams
      def list_members(key, params = {})
        @client.request(
          method: :get,
          path: ["v1/audiences/%1$s/members", key],
          model: Knockapi::Models::AudienceListMembersResponse,
          options: params[:request_options]
        )
      end

      # Removes one or more members from the specified audience.
      #
      # @overload remove_members(key, members:, request_options: {})
      #
      # @param key [String]
      # @param members [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::AudienceRemoveMembersParams
      def remove_members(key, params)
        parsed, options = Knockapi::Models::AudienceRemoveMembersParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/audiences/%1$s/members", key],
          body: parsed,
          model: String,
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
