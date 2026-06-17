# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#trigger
    class WorkflowTriggerParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute recipients
      #   The recipients to trigger the workflow for. Can inline identify users, objects,
      #   or use a list of user IDs. Limited to 1,000 recipients.
      #
      #   @return [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>]
      required :recipients, -> { Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientRequest] }

      # @!attribute actor
      #   Specifies a recipient in a request. This can either be a user identifier
      #   (string), an inline user request (object), or an inline object request, which is
      #   determined by the presence of a `collection` property.
      #
      #   @return [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil]
      optional :actor, union: -> { Knockapi::RecipientRequest }, nil?: true

      # @!attribute cancellation_key
      #   A key that is used to reference a specific workflow trigger request when issuing
      #   a [workflow cancellation](/send-notifications/canceling-workflows) request. Must
      #   be provided while triggering a workflow in order to enable subsequent
      #   cancellation. Should be unique across trigger requests to avoid unintentional
      #   cancellations.
      #
      #   @return [String, nil]
      optional :cancellation_key, String, nil?: true

      # @!attribute data
      #   An optional map of data to pass into the workflow execution. There is a 10MB
      #   limit on the size of the full `data` payload. Any individual string value
      #   greater than 1024 bytes in length will be
      #   [truncated](/developer-tools/api-logs#log-truncation) in your logs.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute settings
      #   Optional settings that control how this workflow trigger is executed.
      #
      #   @return [Knockapi::Models::WorkflowTriggerParams::Settings, nil]
      optional :settings, -> { Knockapi::WorkflowTriggerParams::Settings }, nil?: true

      # @!attribute tenant
      #   An request to set a tenant inline.
      #
      #   @return [String, Knockapi::Models::TenantRequest, nil]
      optional :tenant, union: -> { Knockapi::InlineTenantRequest }, nil?: true

      # @!method initialize(key:, recipients:, actor: nil, cancellation_key: nil, data: nil, settings: nil, tenant: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::WorkflowTriggerParams} for more details.
      #
      #   @param key [String]
      #
      #   @param recipients [Array<String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest>] The recipients to trigger the workflow for. Can inline identify users, objects,
      #
      #   @param actor [String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest, nil] Specifies a recipient in a request. This can either be a user identifier (string
      #
      #   @param cancellation_key [String, nil] A key that is used to reference a specific workflow trigger request when issuing
      #
      #   @param data [Hash{Symbol=>Object}, nil] An optional map of data to pass into the workflow execution. There is a 10MB lim
      #
      #   @param settings [Knockapi::Models::WorkflowTriggerParams::Settings, nil] Optional settings that control how this workflow trigger is executed.
      #
      #   @param tenant [String, Knockapi::Models::TenantRequest, nil] An request to set a tenant inline.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Settings < Knockapi::Internal::Type::BaseModel
        # @!attribute sandbox_mode
        #   When set to true, overrides the sandbox mode for all channels in this workflow
        #   run, messages are not delivered to the underlying providers. If false or not
        #   set, the workflow delivers messages normally.
        #
        #   @return [Boolean, nil]
        optional :sandbox_mode, Knockapi::Internal::Type::Boolean, nil?: true

        # @!attribute skip_delay
        #   When set to true, skips all delay steps in the workflow for this trigger
        #   request. If false or not set, delay steps execute normally.
        #
        #   @return [Boolean, nil]
        optional :skip_delay, Knockapi::Internal::Type::Boolean, nil?: true

        # @!method initialize(sandbox_mode: nil, skip_delay: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::WorkflowTriggerParams::Settings} for more details.
        #
        #   Optional settings that control how this workflow trigger is executed.
        #
        #   @param sandbox_mode [Boolean, nil] When set to true, overrides the sandbox mode for all channels in this workflow r
        #
        #   @param skip_delay [Boolean, nil] When set to true, skips all delay steps in the workflow for this trigger request
      end
    end
  end
end
