# typed: strong

module Knockapi
  module Models
    class ObjectListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cursor to fetch entries after.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Additional fields to include in the response.
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol])) }
      attr_reader :include

      sig { params(include: T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol]).void }
      attr_writer :include

      # Mode of the request.
      sig { returns(T.nilable(Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol).void }
      attr_writer :mode

      # Objects to filter by (only used if mode is `recipient`).
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)]
          )
        )
      end
      attr_reader :objects

      sig do
        params(
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference,
              Knockapi::Internal::AnyHash
            )
          ]
        )
          .void
      end
      attr_writer :objects

      # The number of items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Recipients to filter by (only used if mode is `object`).
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)]
          )
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference,
              Knockapi::Internal::AnyHash
            )
          ]
        )
          .void
      end
      attr_writer :recipients

      sig do
        params(
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol],
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference,
              Knockapi::Internal::AnyHash
            )
          ],
          page_size: Integer,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference,
              Knockapi::Internal::AnyHash
            )
          ],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after: nil,
        before: nil,
        include: nil,
        mode: nil,
        objects: nil,
        page_size: nil,
        recipients: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              include: T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol],
              mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
              objects: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)],
              page_size: Integer,
              recipients: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      module Include
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREFERENCES = T.let(:preferences, Knockapi::Models::ObjectListSubscriptionsParams::Include::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::TaggedSymbol]) }
        def self.values; end
      end

      # Mode of the request.
      module Mode
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECIPIENT = T.let(:recipient, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)
        OBJECT = T.let(:object, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol]) }
        def self.values; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # An identifier for the recipient object.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The collection the recipient object belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A reference to a recipient object.
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id: nil, collection: nil); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference]) }
        def self.variants; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # An identifier for the recipient object.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The collection the recipient object belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A reference to a recipient object.
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id: nil, collection: nil); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference]) }
        def self.variants; end
      end
    end
  end
end
