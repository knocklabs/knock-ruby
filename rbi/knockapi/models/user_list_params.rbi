# typed: strong

module Knockapi
  module Models
    class UserListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::UserListParams, Knockapi::Internal::AnyHash)
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

      # Associated resources to include in the response.
      sig do
        returns(
          T.nilable(T::Array[Knockapi::UserListParams::Include::OrSymbol])
        )
      end
      attr_reader :include

      sig do
        params(
          include: T::Array[Knockapi::UserListParams::Include::OrSymbol]
        ).void
      end
      attr_writer :include

      # The number of items per page (defaults to 50).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          after: String,
          before: String,
          include: T::Array[Knockapi::UserListParams::Include::OrSymbol],
          page_size: Integer,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Associated resources to include in the response.
        include: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            include: T::Array[Knockapi::UserListParams::Include::OrSymbol],
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
          T.type_alias { T.all(Symbol, Knockapi::UserListParams::Include) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREFERENCES =
          T.let(:preferences, Knockapi::UserListParams::Include::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Knockapi::UserListParams::Include::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
