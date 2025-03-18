# typed: strong

module Knockapi
  module Models
    class ObjectListSubscriptionsParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

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

      # Mode of the request
      sig { returns(T.nilable(Symbol)) }
      def mode
      end

      sig { params(_: Symbol).returns(Symbol) }
      def mode=(_)
      end

      # Objects to filter by (only used if mode is `recipient`)
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

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # Recipients to filter by (only used if mode is `object`)
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

      # Mode of the request
      class Mode < Knockapi::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        RECIPIENT = :recipient
        OBJECT = :object
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Object < Knockapi::Union
        abstract!

        Variants = type_template(:out) { {fixed: T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)} }

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
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knockapi::Union
        abstract!

        Variants = type_template(:out) { {fixed: T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)} }

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
      end
    end
  end
end
