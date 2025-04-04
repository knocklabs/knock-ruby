# frozen_string_literal: true

module Knockapi
  module Models
    ScheduleCreateResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Schedule }]
  end
end
