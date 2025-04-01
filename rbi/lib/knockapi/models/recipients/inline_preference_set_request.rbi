# typed: strong

module Knockapi
  module Models
    module Recipients
      InlinePreferenceSetRequest =
        T.let(Knockapi::HashOf[Knockapi::Models::Recipients::PreferenceSetRequest], Knockapi::Type::Converter)
    end
  end
end
