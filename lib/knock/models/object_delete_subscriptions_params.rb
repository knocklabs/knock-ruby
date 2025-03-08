# frozen_string_literal: true

module Knock
  module Models
    class ObjectDeleteSubscriptionsParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute recipients
      #
      #   @return [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      required :recipients, -> { Knock::ArrayOf[union: Knock::Models::RecipientRequest] }

      # @!parse
      #   # @param recipients [Array<String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest>]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(recipients:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
