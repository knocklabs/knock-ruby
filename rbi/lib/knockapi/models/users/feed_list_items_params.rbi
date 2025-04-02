# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsParams < Knockapi::BaseModel
        extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # The cursor to fetch entries after
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The archived status of the feed items to return
        sig { returns(T.nilable(Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol)) }
        attr_reader :archived

        sig { params(archived: Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol).void }
        attr_writer :archived

        # The cursor to fetch entries before
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Whether the feed items have a tenant
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_tenant

        sig { params(has_tenant: T::Boolean).void }
        attr_writer :has_tenant

        # The page size to fetch
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # The source of the feed items to return
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        # The status of the feed items to return
        sig { returns(T.nilable(Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol)) }
        attr_reader :status

        sig { params(status: Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol).void }
        attr_writer :status

        # The tenant of the feed items to return
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        # The trigger data of the feed items to return (as a JSON string)
        sig { returns(T.nilable(String)) }
        attr_reader :trigger_data

        sig { params(trigger_data: String).void }
        attr_writer :trigger_data

        # The workflow categories of the feed items to return
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :workflow_categories

        sig { params(workflow_categories: T::Array[String]).void }
        attr_writer :workflow_categories

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
            T.type_alias { T.any(Symbol, String, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol) }

          EXCLUDE = T.let(:exclude, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)
          INCLUDE = T.let(:include, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)
          ONLY = T.let(:only, Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Users::FeedListItemsParams::Archived::TaggedSymbol]) }
          def self.values
          end
        end

        # The status of the feed items to return
        module Status
          extend Knockapi::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::Users::FeedListItemsParams::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol) }

          UNREAD = T.let(:unread, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          READ = T.let(:read, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          UNSEEN = T.let(:unseen, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          SEEN = T.let(:seen, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)
          ALL = T.let(:all, Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::Users::FeedListItemsParams::Status::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
