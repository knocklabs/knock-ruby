# typed: strong

module Knockapi
  module Models
    class ScheduleDeleteParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ScheduleDeleteParams, Knockapi::Internal::AnyHash)
        end

      # A list of schedule IDs.
      sig { returns(T::Array[String]) }
      attr_accessor :schedule_ids

      sig do
        params(
          schedule_ids: T::Array[String],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of schedule IDs.
        schedule_ids:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            schedule_ids: T::Array[String],
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
