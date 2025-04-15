# typed: strong

module Knockapi
  module Models
    class UserListSubscriptionsParams < Knockapi::Internal::Type::BaseModel
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

      # Objects to filter by
      sig do
        returns(
          T.nilable(T::Array[T.any(String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1)])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1,
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

      sig do
        params(
          after: String,
          before: String,
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ],
          page_size: Integer,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, before: nil, objects: nil, page_size: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              objects: T::Array[T.any(String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1)],
              page_size: Integer,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

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

        sig { override.returns([String, Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1]) }
        def self.variants; end
      end
    end
  end
end
