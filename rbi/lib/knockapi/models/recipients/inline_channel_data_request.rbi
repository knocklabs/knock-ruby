# typed: strong

module Knockapi
  module Models
    module Recipients
      InlineChannelDataRequest =
        T.let(Knockapi::HashOf[Knockapi::Models::Recipients::ChannelDataRequest], Knockapi::Type::Converter)
    end
  end
end
