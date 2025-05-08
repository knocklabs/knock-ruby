# typed: strong

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # The typename of the schema.
        sig { returns(String) }
        attr_accessor :_typename

        # Timestamp when the resource was created.
        sig { returns(Time) }
        attr_accessor :inserted_at

        # A custom [Object](/concepts/objects) entity which belongs to a collection.
        sig { returns(Knockapi::Object) }
        attr_reader :object

        sig { params(object: Knockapi::Object::OrHash).void }
        attr_writer :object

        # A recipient of a notification, which is either a user or an object.
        sig { returns(T.any(Knockapi::User, Knockapi::Object)) }
        attr_accessor :recipient

        # The timestamp when the resource was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The custom properties associated with the subscription relationship.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :properties

        # A subscription object.
        sig do
          params(
            _typename: String,
            inserted_at: Time,
            object: Knockapi::Object::OrHash,
            recipient: T.any(Knockapi::User::OrHash, Knockapi::Object::OrHash),
            updated_at: Time,
            properties: T.nilable(T::Hash[Symbol, T.anything])
          ).returns(T.attached_class)
        end
        def self.new(
          # The typename of the schema.
          _typename:,
          # Timestamp when the resource was created.
          inserted_at:,
          # A custom [Object](/concepts/objects) entity which belongs to a collection.
          object:,
          # A recipient of a notification, which is either a user or an object.
          recipient:,
          # The timestamp when the resource was last updated.
          updated_at:,
          # The custom properties associated with the subscription relationship.
          properties: nil
        )
        end

        sig do
          override.returns(
            {
              _typename: String,
              inserted_at: Time,
              object: Knockapi::Object,
              recipient: T.any(Knockapi::User, Knockapi::Object),
              updated_at: Time,
              properties: T.nilable(T::Hash[Symbol, T.anything])
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
