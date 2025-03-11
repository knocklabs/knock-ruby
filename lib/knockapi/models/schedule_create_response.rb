# frozen_string_literal: true

module Knockapi
  module Models
    ScheduleCreateResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Schedule }]
  end
end
