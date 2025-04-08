# typed: strong

module Knockapi
  module Models
    class AudienceListMembersResponse < Knockapi::Internal::Type::BaseModel
      sig { returns(T::Array[Knockapi::Models::AudienceMember]) }
      attr_accessor :entries

      # The information about a paginated result
      sig { returns(Knockapi::Models::AudienceListMembersResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info: T.any(Knockapi::Models::AudienceListMembersResponse::PageInfo, Knockapi::Internal::AnyHash)
        )
          .void
      end
      attr_writer :page_info

      # A response containing a list of audience members
      sig do
        params(
          entries: T::Array[T.any(Knockapi::Models::AudienceMember, Knockapi::Internal::AnyHash)],
          page_info: T.any(Knockapi::Models::AudienceListMembersResponse::PageInfo, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(entries:, page_info:); end

      sig do
        override
          .returns(
            {
              entries: T::Array[Knockapi::Models::AudienceMember],
              page_info: Knockapi::Models::AudienceListMembersResponse::PageInfo
            }
          )
      end
      def to_hash; end

      class PageInfo < Knockapi::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :_typename

        sig { returns(Integer) }
        attr_accessor :page_size

        sig { returns(T.nilable(String)) }
        attr_accessor :after

        sig { returns(T.nilable(String)) }
        attr_accessor :before

        # The information about a paginated result
        sig do
          params(_typename: String, page_size: Integer, after: T.nilable(String), before: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(_typename:, page_size:, after: nil, before: nil); end

        sig do
          override
            .returns({
                       _typename: String,
                       page_size: Integer,
                       after: T.nilable(String),
                       before: T.nilable(String)
                     })
        end
        def to_hash; end
      end
    end
  end
end
