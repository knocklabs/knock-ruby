# frozen_string_literal: true

module Knockapi
  module Models
    ScheduleDeleteResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Schedule }]
  end
end
