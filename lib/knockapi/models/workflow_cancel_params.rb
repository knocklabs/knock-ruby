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
               -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::WorkflowCancelParams::Recipient] },
               nil?: true

      # @!method initialize(cancellation_key:, recipients: nil, request_options: {})
      #   @param cancellation_key [String]
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      # Specifies a recipient in a request. This can either be a user identifier
      # (string), an inline user request (object), or an inline object request, which is
      # determined by the presence of a `collection` property.
      module Recipient
        extend Knockapi::Internal::Type::Union

        # The ID of the user.
        variant String

        # A set of parameters to inline-identify a user with. Inline identifying the user will ensure that the user is available before the request is executed in Knock. It will perform an upsert for the user you're supplying, replacing any properties specified.
        variant -> { Knockapi::Models::InlineIdentifyUserRequest }

        # A custom object entity which belongs to a collection.
        variant -> { Knockapi::Models::InlineObjectRequest }

        # @!method self.variants
        #   @return [Array(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
      end
    end
  end
end
