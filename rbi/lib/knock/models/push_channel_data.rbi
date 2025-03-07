# typed: strong

module Knock
  module Models
    class PushChannelData < Knock::BaseModel
      sig { returns(T::Array[String]) }
      def tokens
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def tokens=(_)
      end

      sig { params(tokens: T::Array[String]).void }
      def initialize(tokens:)
      end

      sig { override.returns({tokens: T::Array[String]}) }
      def to_hash
      end
    end
  end
end
