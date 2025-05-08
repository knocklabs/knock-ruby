# typed: strong

module Knockapi
  module Models
    # A reference to a recipient, either a user identifier (string) or an object
    # reference (ID, collection).
    module RecipientReference
      extend Knockapi::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(String, Knockapi::RecipientReference::ObjectReference)
        end

      class ObjectReference < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
        def self.new(
          # An identifier for the recipient object.
          id: nil,
          # The collection the recipient object belongs to.
          collection: nil
        )
        end

        sig { override.returns({ id: String, collection: String }) }
        def to_hash
        end
      end

      sig { override.returns(T::Array[Knockapi::RecipientReference::Variants]) }
      def self.variants
      end
    end
  end
end
