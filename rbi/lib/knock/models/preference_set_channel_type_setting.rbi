# typed: strong

module Knock
  module Models
    class PreferenceSetChannelTypeSetting < Knock::BaseModel
      sig { returns(T::Array[Knock::Models::Condition]) }
      def conditions
      end

      sig { params(_: T::Array[Knock::Models::Condition]).returns(T::Array[Knock::Models::Condition]) }
      def conditions=(_)
      end

      sig { params(conditions: T::Array[Knock::Models::Condition]).returns(T.attached_class) }
      def self.new(conditions:)
      end

      sig { override.returns({conditions: T::Array[Knock::Models::Condition]}) }
      def to_hash
      end
    end
  end
end
