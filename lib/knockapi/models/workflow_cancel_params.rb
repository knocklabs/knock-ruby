# frozen_string_literal: true

module Knockapi
  module Models
    class WorkflowCancelParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute cancellation_key
      #   The cancellation key supplied to the workflow trigger endpoint to use for
      #     cancelling one or more workflow runs.
      #
      #   @return [String]
      required :cancellation_key, String

      # @!attribute recipients
      #   An optional list of recipients to cancel the workflow for using the cancellation
      #     key.
      #
      #   @return [Array<String>, nil]
      optional :recipients, Knockapi::ArrayOf[String], nil?: true

      # @!attribute tenant
      #
      #   @return [String, nil]
      optional :tenant, String, nil?: true

      # @!parse
      #   # @param cancellation_key [String]
      #   # @param recipients [Array<String>, nil]
      #   # @param tenant [String, nil]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(cancellation_key:, recipients: nil, tenant: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
