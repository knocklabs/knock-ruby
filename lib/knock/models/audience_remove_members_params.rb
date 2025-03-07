# frozen_string_literal: true

module Knock
  module Models
    class AudienceRemoveMembersParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute members
      #
      #   @return [Array<Knock::Models::AudienceRemoveMembersParams::Member>]
      required :members, -> { Knock::ArrayOf[Knock::Models::AudienceRemoveMembersParams::Member] }

      # @!parse
      #   # @param members [Array<Knock::Models::AudienceRemoveMembersParams::Member>]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(members:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      class Member < Knock::BaseModel
        # @!attribute user
        #   A set of parameters to inline-identify a user with. Inline identifying the user
        #     will ensure that the user is available before the request is executed in Knock.
        #     It will perform an upsert against the user you're supplying, replacing any
        #     properties specified.
        #
        #   @return [Knock::Models::InlineIdentifyUserRequest]
        required :user, -> { Knock::Models::InlineIdentifyUserRequest }

        # @!attribute tenant
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!parse
        #   # A request for an individual audience member
        #   #
        #   # @param user [Knock::Models::InlineIdentifyUserRequest]
        #   # @param tenant [String, nil]
        #   #
        #   def initialize(user:, tenant: nil, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
