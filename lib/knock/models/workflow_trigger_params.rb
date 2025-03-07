# frozen_string_literal: true

module Knock
  module Models
    class WorkflowTriggerParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #     (string), an inline user request (object), or an inline object request, which is
      #     determined by the presence of a `collection` property.
      #
      #   @return [String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knock::Models::RecipientRequest }, nil?: true

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
      optional :data, Knock::HashOf[Knock::Unknown], nil?: true

      # @!attribute [r] recipients
      #   The recipients to trigger the workflow for. Cannot exceed 1000 recipients in a
      #     single trigger.
      #
      #   @return [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>, nil]
      optional :recipients, -> { Knock::ArrayOf[union: Knock::Models::RecipientRequest] }

      # @!parse
      #   # @return [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      #   attr_writer :recipients

      # @!attribute tenant
      #   An inline tenant request
      #
      #   @return [String, Knock::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knock::Models::InlineTenantRequest }, nil?: true

      # @!parse
      #   # @param actor [String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest, nil]
      #   # @param cancellation_key [String, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param recipients [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      #   # @param tenant [String, Knock::Models::TenantRequest, nil]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(actor: nil, cancellation_key: nil, data: nil, recipients: nil, tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
