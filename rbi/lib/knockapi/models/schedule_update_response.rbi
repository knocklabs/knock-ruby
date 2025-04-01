# typed: strong

module Knockapi
  module Models
    ScheduleUpdateResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Type::Converter)
  end
end
