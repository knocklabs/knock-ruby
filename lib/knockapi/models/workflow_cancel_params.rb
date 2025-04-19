# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Workflows#cancel
    class WorkflowCancelParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute cancellation_key
      #   The cancellation key provided during the initial notify call. If used in a
      #   cancel request, will cancel the notification for the recipients specified in the
      #   cancel request.
      #
      #   @return [String]
      required :cancellation_key, String

      # @!attribute recipients
      #   A list of recipients to cancel the notification for. If omitted, cancels for all
      #   recipients associated with the cancellation key.
      #
      #   @return [Array<String>, nil]
      optional :recipients, Knockapi::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(cancellation_key:, recipients: nil, request_options: {})
      #   @param cancellation_key [String]
      #   @param recipients [Array<String>, nil]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
