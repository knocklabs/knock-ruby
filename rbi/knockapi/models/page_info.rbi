# typed: strong

module Knockapi
  module Models
    class PageInfo < Knockapi::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The number of items per page.
      sig { returns(Integer) }
      attr_accessor :page_size

      # The cursor to fetch entries after.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # The cursor to fetch entries before.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Pagination information for a list of resources.
      sig do
        params(
          _typename: String,
          page_size: Integer,
          after: T.nilable(String),
          before: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The typename of the schema.
        _typename:,
        # The number of items per page.
        page_size:,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil
      )
      end

      sig do
        override.returns(
          {
            _typename: String,
            page_size: Integer,
            after: T.nilable(String),
            before: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
