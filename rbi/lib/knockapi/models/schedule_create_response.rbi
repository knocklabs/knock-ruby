# typed: strong

module Knockapi
  module Models
    ScheduleCreateResponse =
      T.let(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Schedule], Knockapi::Internal::Type::Converter)
  end
end
