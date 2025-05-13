# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Providers::SlackListChannelsResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # A Slack channel ID from the Slack provider.
        sig { returns(String) }
        attr_accessor :id

        # The team ID that the Slack channel belongs to.
        sig { returns(String) }
        attr_accessor :context_team_id

        # Whether the Slack channel is an IM channel.
        sig { returns(T::Boolean) }
        attr_accessor :is_im

        # Whether the Slack channel is private.
        sig { returns(T::Boolean) }
        attr_accessor :is_private

        # Slack channel name.
        sig { returns(String) }
        attr_accessor :name

        # A Slack channel.
        sig do
          params(
            id: String,
            context_team_id: String,
            is_im: T::Boolean,
            is_private: T::Boolean,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A Slack channel ID from the Slack provider.
          id:,
          # The team ID that the Slack channel belongs to.
          context_team_id:,
          # Whether the Slack channel is an IM channel.
          is_im:,
          # Whether the Slack channel is private.
          is_private:,
          # Slack channel name.
          name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              context_team_id: String,
              is_im: T::Boolean,
              is_private: T::Boolean,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
