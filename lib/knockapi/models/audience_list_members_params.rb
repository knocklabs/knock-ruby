# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#list_members
    class AudienceListMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!method initialize(key:, request_options: {})
      #   @param key [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
