# frozen_string_literal: true

module Knockapi
  module Models
    class ScheduleDeleteParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute schedule_ids
      #
      #   @return [Array<String>]
      required :schedule_ids, Knockapi::ArrayOf[String]

      # @!parse
      #   # @param schedule_ids [Array<String>]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(schedule_ids:, request_options: {}, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void
    end
  end
end
