# frozen_string_literal: true

module Knockapi
  module Models
    ScheduleUpdateResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Schedule }]
  end
end
