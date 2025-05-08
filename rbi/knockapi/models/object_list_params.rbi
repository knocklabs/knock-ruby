# typed: strong

module Knockapi
  module Models
    class ObjectListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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

      # Includes preferences of the objects in the response.
      sig do
        returns(
          T.nilable(T::Array[Knockapi::ObjectListParams::Include::OrSymbol])
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Knockapi::ObjectListParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      # The number of items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          after: String,
          before: String,
          include: T::Array[Knockapi::ObjectListParams::Include::OrSymbol],
          page_size: Integer,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Includes preferences of the objects in the response.
        include: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            include: T::Array[Knockapi::ObjectListParams::Include::OrSymbol],
            page_size: Integer,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Include
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::ObjectListParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREFERENCES =
          T.let(:preferences, Knockapi::ObjectListParams::Include::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::ObjectListParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
