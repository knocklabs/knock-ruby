# frozen_string_literal: true

module Knockapi
  module Models
    # @type [Knockapi::Internal::Type::Converter]
    ScheduleCreateResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Schedule }]
  end
end
