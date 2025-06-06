# typed: strong

module Knockapi
  module Models
    class ScheduleListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ScheduleListParams, Knockapi::Internal::AnyHash)
        end

      # Filter by workflow key.
      sig { returns(String) }
      attr_accessor :workflow

      # The cursor to fetch entries after.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The number of items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by recipient references.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(String, Knockapi::RecipientReference::ObjectReference)
            ]
          )
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ]
        ).void
      end
      attr_writer :recipients

      # Filter by tenant ID.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients:
            T::Array[
              T.any(
                String,
                Knockapi::RecipientReference::ObjectReference::OrHash
              )
            ],
          tenant: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by workflow key.
        workflow:,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        # Filter by recipient references.
        recipients: nil,
        # Filter by tenant ID.
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            workflow: String,
            after: String,
            before: String,
            page_size: Integer,
            recipients:
              T::Array[
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ],
            tenant: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
