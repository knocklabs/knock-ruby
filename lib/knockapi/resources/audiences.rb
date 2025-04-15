# frozen_string_literal: true

module Knockapi
  module Resources
    class Audiences
      # Add members to an audience
      #
      # @overload add_members(key, request_options: {})
      #
      # @param key [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::AudienceAddMembersParams
      def add_members(key, params = {})
        @client.request(
          method: :post,
          path: ["v1/audiences/%1$s/members", key],
          model: String,
          options: params[:request_options]
        )
      end

      # List members of an audience
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

      # Remove members from an audience
      #
      # @overload remove_members(key, request_options: {})
      #
      # @param key [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::AudienceRemoveMembersParams
      def remove_members(key, params = {})
        @client.request(
          method: :delete,
          path: ["v1/audiences/%1$s/members", key],
          model: String,
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
