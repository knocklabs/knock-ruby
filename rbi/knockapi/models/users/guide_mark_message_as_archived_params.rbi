# typed: strong

module Knockapi
  module Models
    module Users
      class GuideMarkMessageAsArchivedParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::GuideMarkMessageAsArchivedParams,
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

        # The unique identifier for the guide.
        sig { returns(String) }
        attr_accessor :guide_id

        # The key of the guide.
        sig { returns(String) }
        attr_accessor :guide_key

        # The step reference of the guide.
        sig { returns(String) }
        attr_accessor :guide_step_ref

        # Whether the guide is final.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_final

        sig { params(is_final: T::Boolean).void }
        attr_writer :is_final

        # The tenant ID of the guide.
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        # Whether the guide bypasses its guide group's throttle settings. When true,
        # archiving the guide does not open a new throttle window.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :unthrottled

        sig { params(unthrottled: T::Boolean).void }
        attr_writer :unthrottled

        sig do
          params(
            user_id: String,
            message_id: String,
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            is_final: T::Boolean,
            tenant: String,
            unthrottled: T::Boolean,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          user_id:,
          message_id:,
          # The unique identifier for the channel.
          channel_id:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # Whether the guide is final.
          is_final: nil,
          # The tenant ID of the guide.
          tenant: nil,
          # Whether the guide bypasses its guide group's throttle settings. When true,
          # archiving the guide does not open a new throttle window.
          unthrottled: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              message_id: String,
              channel_id: String,
              guide_id: String,
              guide_key: String,
              guide_step_ref: String,
              is_final: T::Boolean,
              tenant: String,
              unthrottled: T::Boolean,
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
