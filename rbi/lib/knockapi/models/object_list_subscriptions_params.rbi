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
      sig { returns(T.nilable(Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol)) }
      def mode
      end

      sig do
        params(_: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol)
          .returns(Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol)
      end
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
          _: T::Array[
          T.any(
            String,
            Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference,
            Knockapi::Util::AnyHash
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference,
              Knockapi::Util::AnyHash
            )
            ]
          )
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
          _: T::Array[
          T.any(
            String,
            Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference,
            Knockapi::Util::AnyHash
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference,
              Knockapi::Util::AnyHash
            )
            ]
          )
      end
      def recipients=(_)
      end

      sig do
        params(
          after: String,
          before: String,
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[
          T.any(
            String,
            Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference,
            Knockapi::Util::AnyHash
          )
          ],
          page_size: Integer,
          recipients: T::Array[
          T.any(
            String,
            Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference,
            Knockapi::Util::AnyHash
          )
          ],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
              mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
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
      module Mode
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol) }

        RECIPIENT = T.let(:recipient, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)
        OBJECT = T.let(:object, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol]) }
          def values
          end
        end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Object
        extend Knockapi::Union

        Variants =
          type_template(:out) { {fixed: T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)} }

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
          sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference]) }
          def variants
          end
        end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        Variants =
          type_template(:out) { {fixed: T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)} }

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
          sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference]) }
          def variants
          end
        end
      end
    end
  end
end
