# typed: strong

module Knockapi
  module Models
    class ObjectListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::ObjectListSubscriptionsParams,
            Knockapi::Internal::AnyHash
          )
        end

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
      sig do
        returns(
          T.nilable(
            T::Array[Knockapi::ObjectListSubscriptionsParams::Include::OrSymbol]
          )
        )
      end
      attr_reader :include

      sig do
        params(
          include:
            T::Array[Knockapi::ObjectListSubscriptionsParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      # Mode of the request. `recipient` to list the objects that the provided object is
      # subscribed to, `object` to list the recipients that subscribe to the provided
      # object.
      sig do
        returns(
          T.nilable(Knockapi::ObjectListSubscriptionsParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: Knockapi::ObjectListSubscriptionsParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      # Objects to filter by (only used if mode is `recipient`).
      sig do
        returns(
          T.nilable(T::Array[Knockapi::ObjectListSubscriptionsParams::Object])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects:
            T::Array[Knockapi::ObjectListSubscriptionsParams::Object::OrHash]
        ).void
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
            T::Array[
              T.any(String, Knockapi::RecipientReference::ObjectReference)
            ]
          )
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ]
        ).void
      end
      attr_writer :recipients

      sig do
        params(
          after: String,
          before: String,
          include:
            T::Array[
              Knockapi::ObjectListSubscriptionsParams::Include::OrSymbol
            ],
          mode: Knockapi::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects:
            T::Array[Knockapi::ObjectListSubscriptionsParams::Object::OrHash],
          page_size: Integer,
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Additional fields to include in the response.
        include: nil,
        # Mode of the request. `recipient` to list the objects that the provided object is
        # subscribed to, `object` to list the recipients that subscribe to the provided
        # object.
        mode: nil,
        # Objects to filter by (only used if mode is `recipient`).
        objects: nil,
        # The number of items per page.
        page_size: nil,
        # Recipients to filter by (only used if mode is `object`).
        recipients: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            include:
              T::Array[
                Knockapi::ObjectListSubscriptionsParams::Include::OrSymbol
              ],
            mode: Knockapi::ObjectListSubscriptionsParams::Mode::OrSymbol,
            objects: T::Array[Knockapi::ObjectListSubscriptionsParams::Object],
            page_size: Integer,
            recipients:
              T::Array[
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ],
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::ObjectListSubscriptionsParams::Include)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREFERENCES =
          T.let(
            :preferences,
            Knockapi::ObjectListSubscriptionsParams::Include::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Knockapi::ObjectListSubscriptionsParams::Include::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Mode of the request. `recipient` to list the objects that the provided object is
      # subscribed to, `object` to list the recipients that subscribe to the provided
      # object.
      module Mode
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::ObjectListSubscriptionsParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECIPIENT =
          T.let(
            :recipient,
            Knockapi::ObjectListSubscriptionsParams::Mode::TaggedSymbol
          )
        OBJECT =
          T.let(
            :object,
            Knockapi::ObjectListSubscriptionsParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Knockapi::ObjectListSubscriptionsParams::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Object < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::ObjectListSubscriptionsParams::Object,
              Knockapi::Internal::AnyHash
            )
          end

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
        def self.new(
          # An identifier for the recipient object.
          id: nil,
          # The collection the recipient object belongs to.
          collection: nil
        )
        end

        sig { override.returns({ id: String, collection: String }) }
        def to_hash
        end
      end
    end
  end
end
