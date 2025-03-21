# typed: strong

module Knockapi
  module Models
    ScheduleUpdateResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Converter)
  end
end
