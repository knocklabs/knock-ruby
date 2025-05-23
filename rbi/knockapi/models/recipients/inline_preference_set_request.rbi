# typed: strong

module Knockapi
  module Models
    module Recipients
      InlinePreferenceSetRequest =
        T.let(
          Knockapi::Internal::Type::HashOf[
            Knockapi::Recipients::PreferenceSetRequest
          ],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
