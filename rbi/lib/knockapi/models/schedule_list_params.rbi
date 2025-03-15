# typed: strong

module Knockapi
  module Models
    class ScheduleListParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Filter by workflow
      sig { returns(String) }
      def workflow
      end

      sig { params(_: String).returns(String) }
      def workflow=(_)
      end

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # Filter by recipient
      sig do
        returns(
          T.nilable(T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)])
        )
      end
      def recipients
      end

      sig do
        params(_: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)])
          .returns(T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)])
      end
      def recipients=(_)
      end

      # Filter by tenant
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
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)],
          tenant: String,
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(workflow:, after: nil, before: nil, page_size: nil, recipients: nil, tenant: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              workflow: String,
              after: String,
              before: String,
              page_size: Integer,
              recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)],
              tenant: String,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        abstract!

        class ObjectReference < Knockapi::BaseModel
          # An object identifier
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The collection the object belongs to
          sig { returns(String) }
          def collection
          end

          sig { params(_: String).returns(String) }
          def collection=(_)
          end

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        class << self
          sig { override.returns([String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference]) }
          def variants
          end
        end
      end
    end
  end
end
