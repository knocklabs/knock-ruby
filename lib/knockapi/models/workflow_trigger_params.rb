# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#trigger
    class WorkflowTriggerParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knockapi::Models::RecipientRequest }, nil?: true

      # @!attribute cancellation_key
      #   An optional key that is used in the workflow cancellation endpoint to target a
      #     cancellation of any workflow runs associated with this trigger.
      #
      #   @return [String, nil]
      optional :cancellation_key, String, nil?: true

      # @!attribute data
      #   An optional map of data to be used in the workflow. This data will be available
      #     to the workflow as a map in the `data` field.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute [r] recipients
      #   The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
      #     single trigger.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>, nil]
      optional :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::RecipientRequest] }

      # @!parse
      #   # @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   attr_writer :recipients

      # @!attribute tenant
      #   An inline tenant request
      #
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      #   # @param cancellation_key [String, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      #   # @param tenant [String, Knockapi::Models::TenantRequest, nil]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(actor: nil, cancellation_key: nil, data: nil, recipients: nil, tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
