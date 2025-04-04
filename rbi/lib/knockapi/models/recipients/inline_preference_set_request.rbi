# typed: strong

module Knockapi
  module Models
    module Recipients
      InlinePreferenceSetRequest =
        T.let(
          Knockapi::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
