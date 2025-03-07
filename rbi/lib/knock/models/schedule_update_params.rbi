# typed: strong

module Knock
  module Models
    class ScheduleUpdateParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T::Array[String]) }
      def schedule_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def schedule_ids=(_)
      end

      sig do
        returns(
          T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
        )
      end
      def actor
      end

      sig do
        params(
          _: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
        )
          .returns(
            T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest))
          )
      end
      def actor=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      def data
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def data=(_)
      end

      sig { returns(T.nilable(Time)) }
      def ending_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def ending_at=(_)
      end

      sig { returns(T.nilable(T::Array[Knock::Models::ScheduleRepeatRule])) }
      def repeats
      end

      sig do
        params(_: T::Array[Knock::Models::ScheduleRepeatRule]).returns(T::Array[Knock::Models::ScheduleRepeatRule])
      end
      def repeats=(_)
      end

      sig { returns(T.nilable(Time)) }
      def scheduled_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_at=(_)
      end

      sig { returns(T.nilable(T.any(String, Knock::Models::TenantRequest))) }
      def tenant
      end

      sig do
        params(_: T.nilable(T.any(String, Knock::Models::TenantRequest)))
          .returns(T.nilable(T.any(String, Knock::Models::TenantRequest)))
      end
      def tenant=(_)
      end

      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[Knock::Models::ScheduleRepeatRule],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        schedule_ids:,
        actor: nil,
        data: nil,
        ending_at: nil,
        repeats: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              schedule_ids: T::Array[String],
              actor: T.nilable(T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              repeats: T::Array[Knock::Models::ScheduleRepeatRule],
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
