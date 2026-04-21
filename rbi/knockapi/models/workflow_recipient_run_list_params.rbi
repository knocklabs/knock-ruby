# typed: strong

module Knockapi
  module Models
    class WorkflowRecipientRunListParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::WorkflowRecipientRunListParams,
            Knockapi::Internal::AnyHash
          )
        end

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

      # Limits the results to workflow recipient runs started before the given date.
      sig { returns(T.nilable(Time)) }
      attr_reader :ending_at

      sig { params(ending_at: Time).void }
      attr_writer :ending_at

      # Limits the results to workflow recipient runs that have errors.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_errors

      sig { params(has_errors: T::Boolean).void }
      attr_writer :has_errors

      # The number of items per page (defaults to 50).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Limits the results to workflow recipient runs for the given recipient. Accepts a
      # user ID string or an object reference with `id` and `collection`.
      sig do
        returns(
          T.nilable(
            T.any(String, Knockapi::RecipientReference::ObjectReference)
          )
        )
      end
      attr_reader :recipient

      sig do
        params(
          recipient:
            T.any(String, Knockapi::RecipientReference::ObjectReference::OrHash)
        ).void
      end
      attr_writer :recipient

      # Limits the results to workflow recipient runs started after the given date.
      sig { returns(T.nilable(Time)) }
      attr_reader :starting_at

      sig { params(starting_at: Time).void }
      attr_writer :starting_at

      # Limits the results to workflow recipient runs with the given status.
      sig do
        returns(
          T.nilable(
            T::Array[Knockapi::WorkflowRecipientRunListParams::Status::OrSymbol]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            T::Array[Knockapi::WorkflowRecipientRunListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      # Limits the results to workflow recipient runs for the given tenant.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # Limits the results to workflow recipient runs for the given workflow key.
      sig { returns(T.nilable(String)) }
      attr_reader :workflow

      sig { params(workflow: String).void }
      attr_writer :workflow

      sig do
        params(
          after: String,
          before: String,
          ending_at: Time,
          has_errors: T::Boolean,
          page_size: Integer,
          recipient:
            T.any(
              String,
              Knockapi::RecipientReference::ObjectReference::OrHash
            ),
          starting_at: Time,
          status:
            T::Array[
              Knockapi::WorkflowRecipientRunListParams::Status::OrSymbol
            ],
          tenant: String,
          workflow: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Limits the results to workflow recipient runs started before the given date.
        ending_at: nil,
        # Limits the results to workflow recipient runs that have errors.
        has_errors: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        # Limits the results to workflow recipient runs for the given recipient. Accepts a
        # user ID string or an object reference with `id` and `collection`.
        recipient: nil,
        # Limits the results to workflow recipient runs started after the given date.
        starting_at: nil,
        # Limits the results to workflow recipient runs with the given status.
        status: nil,
        # Limits the results to workflow recipient runs for the given tenant.
        tenant: nil,
        # Limits the results to workflow recipient runs for the given workflow key.
        workflow: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            ending_at: Time,
            has_errors: T::Boolean,
            page_size: Integer,
            recipient:
              T.any(String, Knockapi::RecipientReference::ObjectReference),
            starting_at: Time,
            status:
              T::Array[
                Knockapi::WorkflowRecipientRunListParams::Status::OrSymbol
              ],
            tenant: String,
            workflow: String,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::WorkflowRecipientRunListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(
            :queued,
            Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Knockapi::WorkflowRecipientRunListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
