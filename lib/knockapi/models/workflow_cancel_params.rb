# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#cancel
    class WorkflowCancelParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute cancellation_key
      #   An optional key that is used to reference a specific workflow trigger request
      #   when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
      #   request. Must be provided while triggering a workflow in order to enable
      #   subsequent cancellation. Should be unique across trigger requests to avoid
      #   unintentional cancellations.
      #
      #   @return [String]
      required :cancellation_key, String

      # @!attribute recipients
      #   A list of recipients to cancel the notification for. If omitted, cancels for all
      #   recipients associated with the cancellation key.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>, nil]
      optional :recipients,
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientRequest] },
               nil?: true

      # @!method initialize(cancellation_key:, recipients: nil, request_options: {})
      #   @param cancellation_key [String]
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
