# typed: strong

module Knock
  module Models
    class ScheduleCreateParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)]) }
      def recipients
      end

      sig do
        params(_: T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)])
          .returns(T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)])
      end
      def recipients=(_)
      end

      sig { returns(T::Array[Knock::Models::ScheduleRepeatRule]) }
      def repeats
      end

      sig do
        params(_: T::Array[Knock::Models::ScheduleRepeatRule]).returns(T::Array[Knock::Models::ScheduleRepeatRule])
      end
      def repeats=(_)
      end

      sig { returns(String) }
      def workflow
      end

      sig { params(_: String).returns(String) }
      def workflow=(_)
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
          recipients: T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)],
          repeats: T::Array[Knock::Models::ScheduleRepeatRule],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        recipients:,
        repeats:,
        workflow:,
        data: nil,
        ending_at: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference)],
              repeats: T::Array[Knock::Models::ScheduleRepeatRule],
              workflow: String,
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knock::Models::TenantRequest)),
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Recipient < Knock::Union
        abstract!

        class ObjectReference < Knock::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def collection
          end

          sig { params(_: String).returns(String) }
          def collection=(_)
          end

          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns([[NilClass, String], [NilClass, Knock::Models::ScheduleCreateParams::Recipient::ObjectReference]])
          end
          private def variants
          end
        end
      end
    end
  end
end
