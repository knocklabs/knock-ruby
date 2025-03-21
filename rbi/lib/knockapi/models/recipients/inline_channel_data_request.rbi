# typed: strong

module Knockapi
  module Models
    module Recipients
      InlineChannelDataRequest =
        T.let(Knockapi::HashOf[Knockapi::Models::Recipients::ChannelDataRequest], Knockapi::Converter)
    end
  end
end
