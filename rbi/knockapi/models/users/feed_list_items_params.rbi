# typed: strong

module Knockapi
  module Models
    module Users
      class FeedListItemsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::FeedListItemsParams,
              Knockapi::Internal::AnyHash
            )
          end

        # The cursor to fetch entries after.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The archived status of the feed items.
        sig do
          returns(
            T.nilable(Knockapi::Users::FeedListItemsParams::Archived::OrSymbol)
          )
        end
        attr_reader :archived

        sig do
          params(
            archived: Knockapi::Users::FeedListItemsParams::Archived::OrSymbol
          ).void
        end
        attr_writer :archived

        # The cursor to fetch entries before.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Whether the feed items have a tenant.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_tenant

        sig { params(has_tenant: T::Boolean).void }
        attr_writer :has_tenant

        # The locale to render the feed items in. Must be in the IETF 5646 format (e.g.
        # `en-US`). When not provided, will default to the locale that the feed items were
        # rendered in. Only available for enterprise plan customers using custom
        # translations.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # The number of items per page (defaults to 50).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # The workflow key associated with the message in the feed.
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        # The status of the feed items.
        sig do
          returns(
            T.nilable(Knockapi::Users::FeedListItemsParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Knockapi::Users::FeedListItemsParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # The tenant associated with the feed items.
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        # The trigger data of the feed items (as a JSON string).
        sig { returns(T.nilable(String)) }
        attr_reader :trigger_data

        sig { params(trigger_data: String).void }
        attr_writer :trigger_data

        # The workflow categories of the feed items.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :workflow_categories

        sig { params(workflow_categories: T::Array[String]).void }
        attr_writer :workflow_categories

        sig do
          params(
            after: String,
            archived: Knockapi::Users::FeedListItemsParams::Archived::OrSymbol,
            before: String,
            has_tenant: T::Boolean,
            locale: String,
            page_size: Integer,
            source: String,
            status: Knockapi::Users::FeedListItemsParams::Status::OrSymbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The cursor to fetch entries after.
          after: nil,
          # The archived status of the feed items.
          archived: nil,
          # The cursor to fetch entries before.
          before: nil,
          # Whether the feed items have a tenant.
          has_tenant: nil,
          # The locale to render the feed items in. Must be in the IETF 5646 format (e.g.
          # `en-US`). When not provided, will default to the locale that the feed items were
          # rendered in. Only available for enterprise plan customers using custom
          # translations.
          locale: nil,
          # The number of items per page (defaults to 50).
          page_size: nil,
          # The workflow key associated with the message in the feed.
          source: nil,
          # The status of the feed items.
          status: nil,
          # The tenant associated with the feed items.
          tenant: nil,
          # The trigger data of the feed items (as a JSON string).
          trigger_data: nil,
          # The workflow categories of the feed items.
          workflow_categories: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              archived:
                Knockapi::Users::FeedListItemsParams::Archived::OrSymbol,
              before: String,
              has_tenant: T::Boolean,
              locale: String,
              page_size: Integer,
              source: String,
              status: Knockapi::Users::FeedListItemsParams::Status::OrSymbol,
              tenant: String,
              trigger_data: String,
              workflow_categories: T::Array[String],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The archived status of the feed items.
        module Archived
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Knockapi::Users::FeedListItemsParams::Archived)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUDE =
            T.let(
              :exclude,
              Knockapi::Users::FeedListItemsParams::Archived::TaggedSymbol
            )
          INCLUDE =
            T.let(
              :include,
              Knockapi::Users::FeedListItemsParams::Archived::TaggedSymbol
            )
          ONLY =
            T.let(
              :only,
              Knockapi::Users::FeedListItemsParams::Archived::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Users::FeedListItemsParams::Archived::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the feed items.
        module Status
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Knockapi::Users::FeedListItemsParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNREAD =
            T.let(
              :unread,
              Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
            )
          READ =
            T.let(
              :read,
              Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
            )
          UNSEEN =
            T.let(
              :unseen,
              Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
            )
          SEEN =
            T.let(
              :seen,
              Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
            )
          ALL =
            T.let(
              :all,
              Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Users::FeedListItemsParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
