# typed: strong

module Knockapi
  module Models
    ScheduleDeleteResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Converter)
  end
end
