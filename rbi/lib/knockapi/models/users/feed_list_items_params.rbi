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
        sig { returns(T.nilable(Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol)) }
        def archived
        end

        sig do
          params(_: Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol)
            .returns(Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol)
        end
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
        sig { returns(T.nilable(Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol)) }
        def status
        end

        sig do
          params(_: Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol)
            .returns(Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol)
        end
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
            archived: Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol,
            before: String,
            has_tenant: T::Boolean,
            page_size: Integer,
            source: String,
            status: Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
                archived: Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol,
                before: String,
                has_tenant: T::Boolean,
                page_size: Integer,
                source: String,
                status: Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol,
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
        module Archived
          extend Knockapi::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol) }

          EXCLUDE = T.let(:exclude, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)
          INCLUDE = T.let(:include, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)
          ONLY = T.let(:only, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol]) }
            def values
            end
          end
        end

        # The status of the feed items to return
        module Status
          extend Knockapi::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsParams::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol) }

          UNREAD = T.let(:unread, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          READ = T.let(:read, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          UNSEEN = T.let(:unseen, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          SEEN = T.let(:seen, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          ALL = T.let(:all, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
