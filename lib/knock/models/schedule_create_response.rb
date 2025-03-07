# frozen_string_literal: true

module Knock
  module Models
    ScheduleCreateResponse = Knock::ArrayOf[-> { Knock::Models::Schedule }]
  end
end
