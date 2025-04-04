# typed: strong

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::BaseModel
        sig { returns(String) }
        attr_accessor :_typename

        sig { returns(Time) }
        attr_accessor :inserted_at

        # A custom-object entity which belongs to a collection.
        sig { returns(Knockapi::Models::Object) }
        attr_reader :object

        sig { params(object: T.any(Knockapi::Models::Object, Knockapi::Internal::Util::AnyHash)).void }
        attr_writer :object

        # A recipient, which is either a user or an object
        sig { returns(T.any(Knockapi::Models::User, Knockapi::Models::Object)) }
        attr_accessor :recipient

        sig { returns(Time) }
        attr_accessor :updated_at

        # The custom properties associated with the subscription
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :properties

        # A subscription object
        sig do
          params(
            _typename: String,
            inserted_at: Time,
            object: T.any(Knockapi::Models::Object, Knockapi::Internal::Util::AnyHash),
            recipient: T.any(Knockapi::Models::User, Knockapi::Internal::Util::AnyHash, Knockapi::Models::Object),
            updated_at: Time,
            properties: T.nilable(T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(_typename:, inserted_at:, object:, recipient:, updated_at:, properties: nil)
        end

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
        def to_hash
        end
      end
    end
  end
end
