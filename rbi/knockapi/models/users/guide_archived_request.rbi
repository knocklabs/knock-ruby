# typed: strong

module Knockapi
  module Models
    module Users
      class GuideArchivedRequest < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::GuideArchivedRequest,
              Knockapi::Internal::AnyHash
            )
          end

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

        # A request to mark a guide as archived.
        sig do
          params(
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            is_final: T::Boolean,
            tenant: String,
            unthrottled: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
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
          unthrottled: nil
        )
        end

        sig do
          override.returns(
            {
              channel_id: String,
              guide_id: String,
              guide_key: String,
              guide_step_ref: String,
              is_final: T::Boolean,
              tenant: String,
              unthrottled: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
