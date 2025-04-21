# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#trigger
    class WorkflowTriggerParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute recipients
      #   The recipients to trigger the workflow for. Can inline identify users, objects,
      #   or use a list of user IDs. Limited to 1,000 recipients.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientRequest] }

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #   (string), an inline user request (object), or an inline object request, which is
      #   determined by the presence of a `collection` property.
      #
      #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knockapi::Models::RecipientRequest }, nil?: true

      # @!attribute cancellation_key
      #   An optional key that is used to reference a specific workflow trigger request
      #   when issuing a [workflow cancellation](/send-notifications/canceling-workflows)
      #   request. Must be provided while triggering a workflow in order to enable
      #   subsequent cancellation. Should be unique across trigger requests to avoid
      #   unintentional cancellations.
      #
      #   @return [String, nil]
      optional :cancellation_key, String, nil?: true

      # @!attribute data
      #   An optional map of data to pass into the workflow execution.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute tenant
      #   An request to set a tenant inline.
      #
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::Models::InlineTenantRequest }, nil?: true

      # @!method initialize(recipients:, actor: nil, cancellation_key: nil, data: nil, tenant: nil, request_options: {})
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      #   @param cancellation_key [String, nil]
      #   @param data [Hash{Symbol=>Object}, nil]
      #   @param tenant [String, Knockapi::Models::TenantRequest, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
