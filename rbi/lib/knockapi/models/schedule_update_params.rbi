# typed: strong

module Knockapi
  module Models
    class ScheduleUpdateParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T::Array[String]) }
      def schedule_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def schedule_ids=(_)
      end

      # Specifies a recipient in a request. This can either be a user identifier
      #   (string), an inline user request (object), or an inline object request, which is
      #   determined by the presence of a `collection` property.
      sig do
        returns(
          T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          )
        )
      end
      def actor
      end

      sig do
        params(
          _: T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          )
        )
          .returns(
            T.nilable(
              T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
            )
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

      sig { returns(T.nilable(T::Array[Knockapi::Models::ScheduleRepeatRule])) }
      def repeats
      end

      sig do
        params(_: T::Array[Knockapi::Models::ScheduleRepeatRule])
          .returns(T::Array[Knockapi::Models::ScheduleRepeatRule])
      end
      def repeats=(_)
      end

      sig { returns(T.nilable(Time)) }
      def scheduled_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_at=(_)
      end

      # An inline tenant request
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      def tenant
      end

      sig do
        params(_: T.nilable(T.any(String, Knockapi::Models::TenantRequest)))
          .returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest)))
      end
      def tenant=(_)
      end

      sig do
        params(
          schedule_ids: T::Array[String],
          actor: T.nilable(
            T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
          ),
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              actor: T.nilable(
                T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)
              ),
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
