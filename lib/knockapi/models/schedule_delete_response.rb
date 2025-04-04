# frozen_string_literal: true

module Knockapi
  module Models
    ScheduleDeleteResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Schedule }]
  end
end
