# typed: strong

module Knockapi
  module Models
    class ListMessagesResponse < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::ListMessagesResponse, Knockapi::Internal::AnyHash)
        end

      # A list of messages.
      sig { returns(T::Array[Knockapi::Message]) }
      attr_accessor :items

      # Pagination information for a list of resources.
      sig { returns(Knockapi::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Knockapi::PageInfo::OrHash).void }
      attr_writer :page_info

      # A paginated list of messages.
      sig do
        params(
          items: T::Array[Knockapi::Message::OrHash],
          page_info: Knockapi::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of messages.
        items:,
        # Pagination information for a list of resources.
        page_info:
      )
      end

      sig do
        override.returns(
          { items: T::Array[Knockapi::Message], page_info: Knockapi::PageInfo }
        )
      end
      def to_hash
      end
    end
  end
end
