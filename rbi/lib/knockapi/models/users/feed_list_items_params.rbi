# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # The cursor to fetch entries after
        sig { returns(T.nilable(String)) }
        def after
        end

        sig { params(_: String).returns(String) }
        def after=(_)
        end

        # The archived status of the feed items to return
        sig { returns(T.nilable(Symbol)) }
        def archived
        end

        sig { params(_: Symbol).returns(Symbol) }
        def archived=(_)
        end

        # The cursor to fetch entries before
        sig { returns(T.nilable(String)) }
        def before
        end

        sig { params(_: String).returns(String) }
        def before=(_)
        end

        # Whether the feed items have a tenant
        sig { returns(T.nilable(T::Boolean)) }
        def has_tenant
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def has_tenant=(_)
        end

        # The page size to fetch
        sig { returns(T.nilable(Integer)) }
        def page_size
        end

        sig { params(_: Integer).returns(Integer) }
        def page_size=(_)
        end

        # The source of the feed items to return
        sig { returns(T.nilable(String)) }
        def source
        end

        sig { params(_: String).returns(String) }
        def source=(_)
        end

        # The status of the feed items to return
        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # The tenant of the feed items to return
        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: String).returns(String) }
        def tenant=(_)
        end

        # The trigger data of the feed items to return (as a JSON string)
        sig { returns(T.nilable(String)) }
        def trigger_data
        end

        sig { params(_: String).returns(String) }
        def trigger_data=(_)
        end

        # The workflow categories of the feed items to return
        sig { returns(T.nilable(T::Array[String])) }
        def workflow_categories
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def workflow_categories=(_)
        end

        sig do
          params(
            after: String,
            archived: Symbol,
            before: String,
            has_tenant: T::Boolean,
            page_size: Integer,
            source: String,
            status: Symbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          after: nil,
          archived: nil,
          before: nil,
          has_tenant: nil,
          page_size: nil,
          source: nil,
          status: nil,
          tenant: nil,
          trigger_data: nil,
          workflow_categories: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
              {
                after: String,
                archived: Symbol,
                before: String,
                has_tenant: T::Boolean,
                page_size: Integer,
                source: String,
                status: Symbol,
                tenant: String,
                trigger_data: String,
                workflow_categories: T::Array[String],
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash
        end

        # The archived status of the feed items to return
        class Archived < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only
        end

        # The status of the feed items to return
        class Status < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          UNREAD = :unread
          READ = :read
          UNSEEN = :unseen
          SEEN = :seen
          ALL = :all
        end
      end
    end
  end
end
