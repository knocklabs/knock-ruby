# typed: strong

module Knockapi
  module Models
    class ScheduleCreateParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The recipients to trigger the workflow for. Can inline identify users, objects,
      # or use a list of user IDs. Limited to 1,000 recipients in a single trigger.
      sig { returns(T::Array[T.any(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)]) }
      attr_accessor :recipients

      # The repeat rule for the schedule.
      sig { returns(T::Array[Knockapi::Models::ScheduleRepeatRule]) }
      attr_accessor :repeats

      # The key of the workflow.
      sig { returns(String) }
      attr_accessor :workflow

      # An optional map of data to pass into the workflow execution.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      # The ending date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :ending_at

      # The starting date and time for the schedule.
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # An request to set a tenant inline.
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      attr_accessor :tenant

      sig do
        params(
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference,
              Knockapi::Internal::AnyHash
            )
          ],
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Internal::AnyHash)],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        recipients:,
        repeats:,
        workflow:,
        data: nil,
        ending_at: nil,
        scheduled_at: nil,
        tenant: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              recipients: T::Array[T.any(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)],
              repeats: T::Array[Knockapi::Models::ScheduleRepeatRule],
              workflow: String,
              data: T.nilable(T::Hash[Symbol, T.anything]),
              ending_at: T.nilable(Time),
              scheduled_at: T.nilable(Time),
              tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest)),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      # A reference to a recipient, either a user identifier (string) or an object
      # reference (ID, collection).
      module Recipient
        extend Knockapi::Internal::Type::Union

        class ObjectReference < Knockapi::Internal::Type::BaseModel
          # An identifier for the recipient object.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The collection the recipient object belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :collection

          sig { params(collection: String).void }
          attr_writer :collection

          # A reference to a recipient object.
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id: nil, collection: nil); end

          sig { override.returns({id: String, collection: String}) }
          def to_hash; end
        end

        sig { override.returns([String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference]) }
        def self.variants; end
      end
    end
  end
end
