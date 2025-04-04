# typed: strong

module Knockapi
  module Models
    ScheduleCreateResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Schedule], Knockapi::Internal::Type::Converter)
  end
end
