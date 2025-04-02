# frozen_string_literal: true

module Knockapi
  module Resources
    class Audiences
      # Add members
      #
      # @param key [String] The key of the audience to add members to
      #
      # @param params [Knockapi::Models::AudienceAddMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Knockapi::Models::AudienceAddMembersParams::Member>] :members
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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

      # List members
      #
      # @param key [String] The key of the audience to list members for
      #
      # @param params [Knockapi::Models::AudienceListMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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

      # Remove members
      #
      # @param key [String] The key of the audience to remove members from
      #
      # @param params [Knockapi::Models::AudienceRemoveMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>] :members
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
