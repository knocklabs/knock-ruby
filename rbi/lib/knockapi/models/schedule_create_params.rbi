# typed: strong

module Knockapi
  module Models
    class ScheduleCreateParams < Knockapi::BaseModel
      extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T::Array[T.any(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference)]) }
      attr_accessor :recipients

      sig { returns(T::Array[Knockapi::Models::ScheduleRepeatRule]) }
      attr_accessor :repeats

      sig { returns(String) }
      attr_accessor :workflow

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :data

      sig { returns(T.nilable(Time)) }
      attr_accessor :ending_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      # An inline tenant request
      sig { returns(T.nilable(T.any(String, Knockapi::Models::TenantRequest))) }
      attr_accessor :tenant

      sig do
        params(
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference, Knockapi::Util::AnyHash)],
          repeats: T::Array[T.any(Knockapi::Models::ScheduleRepeatRule, Knockapi::Util::AnyHash)],
          workflow: String,
          data: T.nilable(T::Hash[Symbol, T.anything]),
          ending_at: T.nilable(Time),
          scheduled_at: T.nilable(Time),
          tenant: T.nilable(T.any(String, Knockapi::Models::TenantRequest, Knockapi::Util::AnyHash)),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        class ObjectReference < Knockapi::BaseModel
          # An object identifier
          sig { returns(String) }
          attr_accessor :id

          # The collection the object belongs to
          sig { returns(String) }
          attr_accessor :collection

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        sig { override.returns([String, Knockapi::Models::ScheduleCreateParams::Recipient::ObjectReference]) }
        def self.variants
        end
      end
    end
  end
end
