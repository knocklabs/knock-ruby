# typed: strong

module Knockapi
  module Models
    class ListSubscriptionsResponse < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::ListSubscriptionsResponse,
            Knockapi::Internal::AnyHash
          )
        end

      # A list of subscriptions.
      sig { returns(T::Array[Knockapi::Recipients::Subscription]) }
      attr_accessor :entries

      # Pagination information for a list of resources.
      sig { returns(Knockapi::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Knockapi::PageInfo::OrHash).void }
      attr_writer :page_info

      # A response containing a list of subscriptions.
      sig do
        params(
          entries: T::Array[Knockapi::Recipients::Subscription::OrHash],
          page_info: Knockapi::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of subscriptions.
        entries:,
        # Pagination information for a list of resources.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            entries: T::Array[Knockapi::Recipients::Subscription],
            page_info: Knockapi::PageInfo
          }
        )
      end
      def to_hash
      end
    end
  end
end
