# typed: strong

module Knockapi
  module Models
    class AudienceListMembersResponse < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::Models::AudienceListMembersResponse,
            Knockapi::Internal::AnyHash
          )
        end

      # A list of audience members.
      sig { returns(T::Array[Knockapi::AudienceMember]) }
      attr_accessor :entries

      # Pagination information for a list of resources.
      sig { returns(Knockapi::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Knockapi::PageInfo::OrHash).void }
      attr_writer :page_info

      # A paginated list of audience members.
      sig do
        params(
          entries: T::Array[Knockapi::AudienceMember::OrHash],
          page_info: Knockapi::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of audience members.
        entries:,
        # Pagination information for a list of resources.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            entries: T::Array[Knockapi::AudienceMember],
            page_info: Knockapi::PageInfo
          }
        )
      end
      def to_hash
      end
    end
  end
end
