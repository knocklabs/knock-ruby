# frozen_string_literal: true

module Knockapi
  module Models
    class AudienceRemoveMembersParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute members
      #
      #   @return [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>]
      required :members, -> { Knockapi::ArrayOf[Knockapi::Models::AudienceRemoveMembersParams::Member] }

      # @!parse
      #   # @param members [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(members:, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      class Member < Knockapi::BaseModel
        # @!attribute user
        #   A set of parameters to inline-identify a user with. Inline identifying the user
        #     will ensure that the user is available before the request is executed in Knock.
        #     It will perform an upsert against the user you're supplying, replacing any
        #     properties specified.
        #
        #   @return [Knockapi::Models::InlineIdentifyUserRequest]
        required :user, -> { Knockapi::Models::InlineIdentifyUserRequest }

        # @!attribute tenant
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!parse
        #   # A request for an individual audience member
        #   #
        #   # @param user [Knockapi::Models::InlineIdentifyUserRequest]
        #   # @param tenant [String, nil]
        #   #
        #   def initialize(user:, tenant: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
