# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Schedules#delete
    class ScheduleDeleteParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute schedule_ids
      #   A list of schedule IDs.
      #
      #   @return [Array<String>]
      required :schedule_ids, Knockapi::Internal::Type::ArrayOf[String]

      # @!method initialize(schedule_ids:, request_options: {})
      #   @param schedule_ids [Array<String>]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
