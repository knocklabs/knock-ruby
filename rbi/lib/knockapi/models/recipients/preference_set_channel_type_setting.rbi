# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypeSetting < Knockapi::BaseModel
        sig { returns(T::Array[Knockapi::Models::Condition]) }
        def conditions
        end

        sig { params(_: T::Array[Knockapi::Models::Condition]).returns(T::Array[Knockapi::Models::Condition]) }
        def conditions=(_)
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        sig do
          params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Util::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(conditions:)
        end

        sig { override.returns({conditions: T::Array[Knockapi::Models::Condition]}) }
        def to_hash
        end
      end
    end
  end
end
