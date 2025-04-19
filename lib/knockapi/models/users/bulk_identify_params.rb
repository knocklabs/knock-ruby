# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#identify
      class BulkIdentifyParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute users
        #   A list of users.
        #
        #   @return [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        required :users, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::InlineIdentifyUserRequest] }

        # @!method initialize(users:, request_options: {})
        #   @param users [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
