# typed: strong

module Knock
  module Models
    module Users
      class FeedListItemsParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T.nilable(String)) }
        def after
        end

        sig { params(_: String).returns(String) }
        def after=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def archived
        end

        sig { params(_: Symbol).returns(Symbol) }
        def archived=(_)
        end

        sig { returns(T.nilable(String)) }
        def before
        end

        sig { params(_: String).returns(String) }
        def before=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def has_tenant
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def has_tenant=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def page_size
        end

        sig { params(_: Integer).returns(Integer) }
        def page_size=(_)
        end

        sig { returns(T.nilable(String)) }
        def source
        end

        sig { params(_: String).returns(String) }
        def source=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: String).returns(String) }
        def tenant=(_)
        end

        sig { returns(T.nilable(String)) }
        def trigger_data
        end

        sig { params(_: String).returns(String) }
        def trigger_data=(_)
        end

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
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
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
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Archived < Knock::Enum
          abstract!

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Status < Knock::Enum
          abstract!

          UNREAD = :unread
          READ = :read
          UNSEEN = :unseen
          SEEN = :seen
          ALL = :all

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
