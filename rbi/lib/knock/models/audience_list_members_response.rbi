# typed: strong

module Knock
  module Models
    class AudienceListMembersResponse < Knock::BaseModel
      sig { returns(T::Array[Knock::Models::AudienceListMembersResponse::Entry]) }
      def entries
      end

      sig do
        params(_: T::Array[Knock::Models::AudienceListMembersResponse::Entry])
          .returns(T::Array[Knock::Models::AudienceListMembersResponse::Entry])
      end
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
          entries: T::Array[Knock::Models::AudienceListMembersResponse::Entry],
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
              entries: T::Array[Knock::Models::AudienceListMembersResponse::Entry],
              page_info: Knock::Models::AudienceListMembersResponse::PageInfo
            }
          )
      end
      def to_hash
      end

      class Entry < Knock::BaseModel
        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        sig { returns(Time) }
        def added_at
        end

        sig { params(_: Time).returns(Time) }
        def added_at=(_)
        end

        sig { returns(Knock::Models::User) }
        def user
        end

        sig { params(_: Knock::Models::User).returns(Knock::Models::User) }
        def user=(_)
        end

        sig { returns(String) }
        def user_id
        end

        sig { params(_: String).returns(String) }
        def user_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tenant=(_)
        end

        sig do
          params(
            _typename: String,
            added_at: Time,
            user: Knock::Models::User,
            user_id: String,
            tenant: T.nilable(String)
          )
            .void
        end
        def initialize(_typename:, added_at:, user:, user_id:, tenant: nil)
        end

        sig do
          override
            .returns(
              {_typename: String, added_at: Time, user: Knock::Models::User, user_id: String, tenant: T.nilable(String)}
            )
        end
        def to_hash
        end
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
