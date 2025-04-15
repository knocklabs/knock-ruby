# typed: strong

module Knockapi
  module Models
    class ObjectListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Mode of the request
      sig { returns(T.nilable(Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol).void }
      attr_writer :mode

      # Objects to filter by (only used if mode is `recipient`)
      sig do
        returns(
          T.nilable(T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1)])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ]
        )
          .void
      end
      attr_writer :objects

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Recipients to filter by (only used if mode is `object`)
      sig do
        returns(
          T.nilable(
            T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1)]
          )
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1,
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
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ],
          page_size: Integer,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1,
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
        mode: nil,
        objects: nil,
        page_size: nil,
        recipients: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
              objects: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1)],
              page_size: Integer,
              recipients: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1)],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      # Mode of the request
      module Mode
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListSubscriptionsParams::Mode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol) }

        RECIPIENT = T.let(:recipient, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)
        OBJECT = T.let(:object, Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Mode::TaggedSymbol]) }
        def self.values; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Object
        extend Knockapi::Internal::Type::Union

        class UnionMember1 < Knockapi::Internal::Type::BaseModel
          # An object identifier
          sig { returns(String) }
          attr_accessor :id

          # The collection the object belongs to
          sig { returns(String) }
          attr_accessor :collection

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Object::UnionMember1]) }
        def self.variants; end
      end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (id, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        class UnionMember1 < Knockapi::Internal::Type::BaseModel
          # An object identifier
          sig { returns(String) }
          attr_accessor :id

          # The collection the object belongs to
          sig { returns(String) }
          attr_accessor :collection

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::UnionMember1]) }
        def self.variants; end
      end
    end
  end
end
