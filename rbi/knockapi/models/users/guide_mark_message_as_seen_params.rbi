# typed: strong

module Knockapi
  module Models
    module Users
      class GuideMarkMessageAsSeenParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::GuideMarkMessageAsSeenParams,
              Knockapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(String) }
        attr_accessor :message_id

        # The unique identifier for the channel.
        sig { returns(String) }
        attr_accessor :channel_id

        # The content of the guide.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :content

        # The unique identifier for the guide.
        sig { returns(String) }
        attr_accessor :guide_id

        # The key of the guide.
        sig { returns(String) }
        attr_accessor :guide_key

        # The step reference of the guide.
        sig { returns(String) }
        attr_accessor :guide_step_ref

        # The data of the guide.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :data

        sig { params(data: T::Hash[Symbol, T.anything]).void }
        attr_writer :data

        # The tenant ID of the guide.
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        sig do
          params(
            user_id: String,
            message_id: String,
            channel_id: String,
            content: T::Hash[Symbol, T.anything],
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            data: T::Hash[Symbol, T.anything],
            tenant: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          user_id:,
          message_id:,
          # The unique identifier for the channel.
          channel_id:,
          # The content of the guide.
          content:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # The data of the guide.
          data: nil,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              message_id: String,
              channel_id: String,
              content: T::Hash[Symbol, T.anything],
              guide_id: String,
              guide_key: String,
              guide_step_ref: String,
              data: T::Hash[Symbol, T.anything],
              tenant: String,
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
