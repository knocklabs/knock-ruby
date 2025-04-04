# typed: strong

module Knockapi
  module Models
    ScheduleUpdateResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Internal::Type::Converter)
  end
end
