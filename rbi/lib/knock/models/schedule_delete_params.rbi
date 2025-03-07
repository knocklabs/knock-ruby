# typed: strong

module Knock
  module Models
    class ScheduleDeleteParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T::Array[String]) }
      def schedule_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def schedule_ids=(_)
      end

      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(schedule_ids:, request_options: {})
      end

      sig { override.returns({schedule_ids: T::Array[String], request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
