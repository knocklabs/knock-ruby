# typed: strong

module Knockapi
  module Models
    module Recipients
      InlineChannelDataRequest =
        T.type_alias { T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest] }
    end
  end
end
