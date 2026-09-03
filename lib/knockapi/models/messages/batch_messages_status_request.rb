# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      class BatchMessagesStatusRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute message_ids
        #   The message IDs to update the status of.
        #
        #   @return [Array<String>]
        required :message_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(message_ids:)
        #   Request to update the status of multiple messages in batch.
        #
        #   @param message_ids [Array<String>] The message IDs to update the status of.
      end
    end
  end
end
