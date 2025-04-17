# typed: strong

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::Internal::Type::BaseModel
        # The typename of the schema.
        sig { returns(String) }
        attr_accessor :_typename

        # Timestamp when the resource was created.
        sig { returns(Time) }
        attr_accessor :inserted_at

        # A custom object entity which belongs to a collection.
        sig { returns(Knockapi::Models::Object) }
        attr_reader :object

        sig { params(object: T.any(Knockapi::Models::Object, Knockapi::Internal::AnyHash)).void }
        attr_writer :object

        # A recipient of a notification, which is either a user or an object.
        sig { returns(T.any(Knockapi::Models::User, Knockapi::Models::Object)) }
        attr_accessor :recipient

        # The timestamp when the resource was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The custom properties associated with the recipients of the subscription.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :properties

        # A subscription object.
        sig do
          params(
            _typename: String,
            inserted_at: Time,
            object: T.any(Knockapi::Models::Object, Knockapi::Internal::AnyHash),
            recipient: T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash, Knockapi::Models::Object),
            updated_at: Time,
            properties: T.nilable(T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil); end

        sig do
          override
            .returns(
              {
                _typename: String,
                inserted_at: Time,
                object: Knockapi::Models::Object,
                recipient: T.any(Knockapi::Models::User, Knockapi::Models::Object),
                updated_at: Time,
                properties: T.nilable(T::Hash[Symbol, T.anything])
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
