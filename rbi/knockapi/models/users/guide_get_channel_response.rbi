# typed: strong

module Knockapi
  module Models
    module Users
      class GuideGetChannelResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::GuideGetChannelResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of guides.
        sig do
          returns(
            T::Array[Knockapi::Models::Users::GuideGetChannelResponse::Guide]
          )
        end
        attr_accessor :guides

        # The recipient of the guide.
        sig do
          returns(
            T.nilable(
              Knockapi::Models::Users::GuideGetChannelResponse::Recipient
            )
          )
        end
        attr_reader :recipient

        sig do
          params(
            recipient:
              T.nilable(
                Knockapi::Models::Users::GuideGetChannelResponse::Recipient::OrHash
              )
          ).void
        end
        attr_writer :recipient

        # A response for a list of guides.
        sig do
          params(
            guides:
              T::Array[
                Knockapi::Models::Users::GuideGetChannelResponse::Guide::OrHash
              ],
            recipient:
              T.nilable(
                Knockapi::Models::Users::GuideGetChannelResponse::Recipient::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of guides.
          guides:,
          # The recipient of the guide.
          recipient: nil
        )
        end

        sig do
          override.returns(
            {
              guides:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Guide
                ],
              recipient:
                T.nilable(
                  Knockapi::Models::Users::GuideGetChannelResponse::Recipient
                )
            }
          )
        end
        def to_hash
        end

        class Guide < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::GuideGetChannelResponse::Guide,
                Knockapi::Internal::AnyHash
              )
            end

          # The unique identifier for the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The content of the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :content

          sig { params(content: String).void }
          attr_writer :content

          # The metadata of the guide.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          # The title of the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig do
            params(
              id: String,
              content: String,
              metadata: T::Hash[Symbol, T.anything],
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the guide.
            id: nil,
            # The content of the guide.
            content: nil,
            # The metadata of the guide.
            metadata: nil,
            # The title of the guide.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                title: String
              }
            )
          end
          def to_hash
          end
        end

        class Recipient < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::GuideGetChannelResponse::Recipient,
                Knockapi::Internal::AnyHash
              )
            end

          # Unique identifier for the recipient.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The recipient of the guide.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # Unique identifier for the recipient.
            id: nil
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
