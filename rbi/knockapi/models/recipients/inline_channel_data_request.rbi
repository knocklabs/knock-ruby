# typed: strong

module Knockapi
  module Models
    module Recipients
      InlineChannelDataRequest =
        T.let(
          Knockapi::Internal::Type::HashOf[Knockapi::Models::Recipients::ChannelDataRequest],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
