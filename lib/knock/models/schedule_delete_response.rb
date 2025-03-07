# frozen_string_literal: true

module Knock
  module Models
    ScheduleDeleteResponse = Knock::ArrayOf[-> { Knock::Models::Schedule }]
  end
end
