# typed: strong

module Knock
  module Models
    class ScheduleListParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def workflow
      end

      sig { params(_: String).returns(String) }
      def workflow=(_)
      end

      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig { returns(T.nilable(T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)])) }
      def recipients
      end

      sig do
        params(_: T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)])
          .returns(T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)])
      end
      def recipients=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)],
          tenant: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        workflow:,
        after: nil,
        before: nil,
        page_size: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              workflow: String,
              after: String,
              before: String,
              page_size: Integer,
              recipients: T::Array[T.any(String, Knock::Models::ScheduleListParams::Recipient::ObjectReference)],
              tenant: String,
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

          sig { params(id: String, collection: String).void }
          def initialize(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns([[NilClass, String], [NilClass, Knock::Models::ScheduleListParams::Recipient::ObjectReference]])
          end
          private def variants
          end
        end
      end
    end
  end
end
