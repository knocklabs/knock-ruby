# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#mark_message_as_archived
      class GuideMarkMessageAsArchivedResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute status
        #   The status of a guide's action.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(status:)
        #   A response for a guide action.
        #
        #   @param status [String]
      end
    end
  end
end
