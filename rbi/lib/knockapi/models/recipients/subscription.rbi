# typed: strong

module Knockapi
  module Models
    module Recipients
      class Subscription < Knockapi::BaseModel
        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        sig { returns(Time) }
        def inserted_at
        end

        sig { params(_: Time).returns(Time) }
        def inserted_at=(_)
        end

        # A custom-object entity which belongs to a collection.
        sig { returns(Knockapi::Models::Object) }
        def object
        end

        sig do
          params(_: T.any(Knockapi::Models::Object, Knockapi::Util::AnyHash))
            .returns(T.any(Knockapi::Models::Object, Knockapi::Util::AnyHash))
        end
        def object=(_)
        end

        # A recipient, which is either a user or an object
        sig { returns(T.any(Knockapi::Models::User, Knockapi::Models::Object)) }
        def recipient
        end

        sig do
          params(_: T.any(Knockapi::Models::User, Knockapi::Models::Object))
            .returns(T.any(Knockapi::Models::User, Knockapi::Models::Object))
        end
        def recipient=(_)
        end

        sig { returns(Time) }
        def updated_at
        end

        sig { params(_: Time).returns(Time) }
        def updated_at=(_)
        end

        # The custom properties associated with the subscription
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def properties
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
        end
        def properties=(_)
        end

        # A subscription object
        sig do
          params(
            _typename: String,
            inserted_at: Time,
            object: Knockapi::Models::Object,
            recipient: T.any(Knockapi::Models::User, Knockapi::Models::Object),
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
