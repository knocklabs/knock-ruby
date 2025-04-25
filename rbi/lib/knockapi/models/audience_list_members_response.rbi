# typed: strong

module Knockapi
  module Models
    class AudienceListMembersResponse < Knockapi::Internal::Type::BaseModel
      # A list of audience members.
      sig { returns(T::Array[Knockapi::Models::AudienceMember]) }
      attr_accessor :entries

      # Pagination information for a list of resources.
      sig { returns(Knockapi::Models::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: T.any(Knockapi::Models::PageInfo, Knockapi::Internal::AnyHash)).void }
      attr_writer :page_info

      # A paginated list of audience members.
      sig do
        params(
          entries: T::Array[T.any(Knockapi::Models::AudienceMember, Knockapi::Internal::AnyHash)],
          page_info: T.any(Knockapi::Models::PageInfo, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A list of audience members.
        entries:,
        # Pagination information for a list of resources.
        page_info:
      ); end
      sig do
        override
          .returns({entries: T::Array[Knockapi::Models::AudienceMember], page_info: Knockapi::Models::PageInfo})
      end
      def to_hash; end
    end
  end
end
