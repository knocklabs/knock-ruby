# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypeSetting < Knockapi::Internal::Type::BaseModel
        sig { returns(T::Array[Knockapi::Models::Condition]) }
        attr_accessor :conditions

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig do
          params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(conditions:); end

        sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
        def to_hash; end
      end
    end
  end
end
