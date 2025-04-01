# typed: strong

module Knockapi
  module Models
    ScheduleCreateResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Type::Converter)
  end
end
