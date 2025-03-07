# frozen_string_literal: true

module Knock
  module Models
    ScheduleUpdateResponse = Knock::ArrayOf[-> { Knock::Models::Schedule }]
  end
end
