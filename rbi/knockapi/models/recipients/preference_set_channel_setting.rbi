# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelSetting < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PreferenceSetChannelSetting,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of conditions to apply to a specific channel.
        sig { returns(T::Array[Knockapi::Condition]) }
        attr_accessor :conditions

        # A set of settings for a specific channel. Currently, this can only be a list of
        # conditions to apply.
        sig do
          params(conditions: T::Array[Knockapi::Condition::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # A list of conditions to apply to a specific channel.
          conditions:
        )
        end

        sig { override.returns({ conditions: T::Array[Knockapi::Condition] }) }
        def to_hash
        end
      end
    end
  end
end
