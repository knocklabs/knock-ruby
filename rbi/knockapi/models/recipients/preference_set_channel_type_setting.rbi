# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypeSetting < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A list of conditions to apply to a channel type.
        sig { returns(T::Array[Knockapi::Condition]) }
        attr_accessor :conditions

        # A set of settings for a channel type. Currently, this can only be a list of
        # conditions to apply.
        sig do
          params(conditions: T::Array[Knockapi::Condition::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # A list of conditions to apply to a channel type.
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
