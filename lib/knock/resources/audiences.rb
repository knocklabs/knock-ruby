# frozen_string_literal: true

module Knock
  module Resources
    class Audiences
      # Add members
      #
      # @param key [String] The key of the audience to add members to
      #
      # @param params [Knock::Models::AudienceAddMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Knock::Models::AudienceAddMembersParams::Member>] :members
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def add_members(key, params)
        parsed, options = Knock::Models::AudienceAddMembersParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/audiences/%0s/members", key],
          body: parsed,
          model: String,
          options: options
        )
      end

      # List members
      #
      # @param key [String] The key of the audience to list members for
      #
      # @param params [Knock::Models::AudienceListMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::AudienceListMembersResponse]
      #
      def list_members(key, params = {})
        @client.request(
          method: :get,
          path: ["v1/audiences/%0s/members", key],
          model: Knock::Models::AudienceListMembersResponse,
          options: params[:request_options]
        )
      end

      # Remove members
      #
      # @param key [String] The key of the audience to remove members from
      #
      # @param params [Knock::Models::AudienceRemoveMembersParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Knock::Models::AudienceRemoveMembersParams::Member>] :members
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def remove_members(key, params)
        parsed, options = Knock::Models::AudienceRemoveMembersParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/audiences/%0s/members", key],
          body: parsed,
          model: String,
          options: options
        )
      end

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
