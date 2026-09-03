# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#add_members
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute members
      #   A list of audience members to add. You can add up to 1,000 members per request.
      #
      #   @return [Array<Knockapi::Models::AudienceMemberRequest>]
      required :members, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceMemberRequest] }

      # @!attribute create_audience
      #   Create the audience if it does not exist.
      #
      #   @return [Boolean, nil]
      optional :create_audience, Knockapi::Internal::Type::Boolean

      # @!method initialize(key:, members:, create_audience: nil, request_options: {})
      #   @param key [String]
      #
      #   @param members [Array<Knockapi::Models::AudienceMemberRequest>] A list of audience members to add. You can add up to 1,000 members per request.
      #
      #   @param create_audience [Boolean] Create the audience if it does not exist.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
