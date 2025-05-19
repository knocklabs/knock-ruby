# typed: strong

module Knockapi
  module Models
    ScheduleCreateResponse =
      T.let(
        Knockapi::Internal::Type::ArrayOf[Knockapi::Schedule],
        Knockapi::Internal::Type::Converter
      )
  end
end
