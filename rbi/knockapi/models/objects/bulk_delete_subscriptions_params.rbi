# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkDeleteSubscriptionsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Objects::BulkDeleteSubscriptionsParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A nested list of subscriptions.
        sig do
          returns(
            T::Array[
              Knockapi::Objects::BulkDeleteSubscriptionsParams::Subscription
            ]
          )
        end
        attr_accessor :subscriptions

        sig do
          params(
            subscriptions:
              T::Array[
                Knockapi::Objects::BulkDeleteSubscriptionsParams::Subscription::OrHash
              ],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A nested list of subscriptions.
          subscriptions:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriptions:
                T::Array[
                  Knockapi::Objects::BulkDeleteSubscriptionsParams::Subscription
                ],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Subscription < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Objects::BulkDeleteSubscriptionsParams::Subscription,
                Knockapi::Internal::AnyHash
              )
            end

          # Unique identifier for the object.
          sig { returns(String) }
          attr_accessor :id

          # The recipients of the subscription. You can subscribe up to 100 recipients to an
          # object at a time.
          sig do
            returns(
              T::Array[
                T.any(String, Knockapi::RecipientReference::ObjectReference)
              ]
            )
          end
          attr_accessor :recipients

          # A list of subscriptions. 1 subscribed-to id, and N subscriber recipients.
          sig do
            params(
              id: String,
              recipients:
                T::Array[
                  T.any(
                    String,
                    Knockapi::RecipientReference::ObjectReference::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the object.
            id:,
            # The recipients of the subscription. You can subscribe up to 100 recipients to an
            # object at a time.
            recipients:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                recipients:
                  T::Array[
                    T.any(String, Knockapi::RecipientReference::ObjectReference)
                  ]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
