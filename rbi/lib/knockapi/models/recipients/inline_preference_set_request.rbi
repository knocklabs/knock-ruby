# typed: strong

module Knockapi
  module Models
    module Recipients
      InlinePreferenceSetRequest =
        T.let(
          Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::InlinePreferenceSetRequest],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
