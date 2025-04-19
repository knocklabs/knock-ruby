# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#delete
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute user_ids
        #   A list of user IDs.
        #
        #   @return [Array<String>]
        required :user_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(user_ids:, request_options: {})
        #   @param user_ids [Array<String>]
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
