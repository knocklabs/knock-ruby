# typed: strong

module Knockapi
  module Models
    module Users
      class GuideSeenRequest < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::GuideSeenRequest,
              Knockapi::Internal::AnyHash
            )
          end

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

        # A request to mark a guide as seen.
        sig do
          params(
            channel_id: String,
            content: T::Hash[Symbol, T.anything],
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            data: T::Hash[Symbol, T.anything],
            tenant: String
          ).returns(T.attached_class)
        end
        def self.new(
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
          tenant: nil
        )
        end

        sig do
          override.returns(
            {
              channel_id: String,
              content: T::Hash[Symbol, T.anything],
              guide_id: String,
              guide_key: String,
              guide_step_ref: String,
              data: T::Hash[Symbol, T.anything],
              tenant: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
