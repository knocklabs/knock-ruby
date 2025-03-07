# typed: strong

module Knock
  module Models
    class AudienceListMembersResponse < Knock::BaseModel
      sig { returns(T::Array[Knock::Models::AudienceMember]) }
      def entries
      end

      sig { params(_: T::Array[Knock::Models::AudienceMember]).returns(T::Array[Knock::Models::AudienceMember]) }
      def entries=(_)
      end

      sig { returns(Knock::Models::AudienceListMembersResponse::PageInfo) }
      def page_info
      end

      sig do
        params(_: Knock::Models::AudienceListMembersResponse::PageInfo)
          .returns(Knock::Models::AudienceListMembersResponse::PageInfo)
      end
      def page_info=(_)
      end

      sig do
        params(
          entries: T::Array[Knock::Models::AudienceMember],
          page_info: Knock::Models::AudienceListMembersResponse::PageInfo
        )
          .void
      end
      def initialize(entries:, page_info:)
      end

      sig do
        override
          .returns(
            {
              entries: T::Array[Knock::Models::AudienceMember],
              page_info: Knock::Models::AudienceListMembersResponse::PageInfo
            }
          )
      end
      def to_hash
      end

      class PageInfo < Knock::BaseModel
        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        sig { returns(Integer) }
        def page_size
        end

        sig { params(_: Integer).returns(Integer) }
        def page_size=(_)
        end

        sig { returns(T.nilable(String)) }
        def after
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def after=(_)
        end

        sig { returns(T.nilable(String)) }
        def before
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def before=(_)
        end

        sig do
          params(
            _typename: String,
            page_size: Integer,
            after: T.nilable(String),
            before: T.nilable(String)
          ).void
        end
        def initialize(_typename:, page_size:, after: nil, before: nil)
        end

        sig do
          override
            .returns({
                       _typename: String,
                       page_size: Integer,
                       after: T.nilable(String),
                       before: T.nilable(String)
                     })
        end
        def to_hash
        end
      end
    end
  end
end
