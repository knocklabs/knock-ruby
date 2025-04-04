# typed: strong

module Knockapi
  module Models
    class ScheduleDeleteParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :schedule_ids

      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(schedule_ids:, request_options: {})
      end

      sig { override.returns({schedule_ids: T::Array[String], request_options: Knockapi::RequestOptions}) }
      def to_hash
      end
    end
  end
end
