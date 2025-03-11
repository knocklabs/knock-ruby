# typed: strong

module Knockapi
  module Models
    class ObjectListSubscriptionsParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

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

      sig { returns(T.nilable(Symbol)) }
      def mode
      end

      sig { params(_: Symbol).returns(Symbol) }
      def mode=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)]
          )
        )
      end
      def objects
      end

      sig do
        params(
          _: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)]
        )
          .returns(T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)])
      end
      def objects=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)]
          )
        )
      end
      def recipients
      end

      sig do
        params(
          _: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)]
        )
          .returns(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)]
          )
      end
      def recipients=(_)
      end

      sig do
        params(
          after: String,
          before: String,
          mode: Symbol,
          objects: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)],
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, before: nil, mode: nil, objects: nil, page_size: nil, recipients: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              mode: Symbol,
              objects: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)],
              page_size: Integer,
              recipients: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Mode < Knockapi::Enum
        abstract!

        RECIPIENT = :recipient
        OBJECT = :object

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Object < Knockapi::Union
        abstract!

        class ObjectReference < Knockapi::BaseModel
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
              .returns(
                [[NilClass, String], [NilClass, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference]]
              )
          end
          private def variants
          end
        end
      end

      class Recipient < Knockapi::Union
        abstract!

        class ObjectReference < Knockapi::BaseModel
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
              .returns(
                [[NilClass, String], [NilClass, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
