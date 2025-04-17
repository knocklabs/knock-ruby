# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#identify
      class BulkIdentifyParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute users
        #   A list of users.
        #
        #   @return [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        required :users, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::InlineIdentifyUserRequest] }

        # @!parse
        #   # @param users [Array<Knockapi::Models::InlineIdentifyUserRequest>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(users:, request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
      end
    end
  end
end
