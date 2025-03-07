# frozen_string_literal: true

module Knock
  module Models
    class ScheduleDeleteParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute schedule_ids
      #
      #   @return [Array<String>]
      required :schedule_ids, Knock::ArrayOf[String]

      # @!parse
      #   # @param schedule_ids [Array<String>]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(schedule_ids:, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
