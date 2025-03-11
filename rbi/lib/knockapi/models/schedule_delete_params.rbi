# typed: strong

module Knockapi
  module Models
    class ScheduleDeleteParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T::Array[String]) }
      def schedule_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def schedule_ids=(_)
      end

      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
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
