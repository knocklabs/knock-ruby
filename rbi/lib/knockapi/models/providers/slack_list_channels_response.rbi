# typed: strong

module Knockapi
  module Models
    module Providers
      class SlackListChannelsResponse < Knockapi::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        sig { returns(T::Array[Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel]) }
        attr_accessor :slack_channels

        # The response from a Slack channels for provider request
        sig do
          params(
            next_cursor: T.nilable(String),
            slack_channels: T::Array[T.any(Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel, Knockapi::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(next_cursor:, slack_channels:); end

        sig do
          override
            .returns(
              {
                next_cursor: T.nilable(String),
                slack_channels: T::Array[Knockapi::Models::Providers::SlackListChannelsResponse::SlackChannel]
              }
            )
        end
        def to_hash; end

        class SlackChannel < Knockapi::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :context_team_id

          sig { returns(T::Boolean) }
          attr_accessor :is_im

          sig { returns(T::Boolean) }
          attr_accessor :is_private

          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              id: String,
              context_team_id: String,
              is_im: T::Boolean,
              is_private: T::Boolean,
              name: String
            )
              .returns(T.attached_class)
          end
          def self.new(id:, context_team_id:, is_im:, is_private:, name:); end

          sig do
            override
              .returns({
                         id: String,
                         context_team_id: String,
                         is_im: T::Boolean,
                         is_private: T::Boolean,
                         name: String
                       })
          end
          def to_hash; end
        end
      end
    end
  end
end
