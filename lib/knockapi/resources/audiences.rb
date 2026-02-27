# frozen_string_literal: true

module Knockapi
  module Resources
    class Audiences
      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::AudienceAddMembersParams} for more details.
      #
      # Adds one or more members to the specified audience.
      #
      # @overload add_members(key, members:, create_audience: nil, request_options: {})
      #
      # @param key [String] Path param: The key of the audience.
      #
      # @param members [Array<Knockapi::Models::AudienceAddMembersParams::Member>] Body param: A list of audience members to add. You can add up to 1,000 members p
      #
      # @param create_audience [Boolean] Query param: Create the audience if it does not exist.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Knockapi::Models::AudienceAddMembersParams
      def add_members(key, params)
        query_params = [:create_audience]
        parsed, options = Knockapi::AudienceAddMembersParams.dump_request(params)
        query = Knockapi::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: ["v1/audiences/%1$s/members", key],
          query: query,
          body: parsed.except(*query_params),
          model: NilClass,
          options: options
        )
      end

      # Returns a paginated list of members for the specified audience.
      #
      # @overload list_members(key, request_options: {})
      #
      # @param key [String] The key of the audience.
      #
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

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::AudienceRemoveMembersParams} for more details.
      #
      # Removes one or more members from the specified audience.
      #
      # @overload remove_members(key, members:, request_options: {})
      #
      # @param key [String] The key of the audience.
      #
      # @param members [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>] A list of audience members to remove. You can remove up to 1,000 members per req
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Knockapi::Models::AudienceRemoveMembersParams
      def remove_members(key, params)
        parsed, options = Knockapi::AudienceRemoveMembersParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/audiences/%1$s/members", key],
          body: parsed,
          model: NilClass,
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
