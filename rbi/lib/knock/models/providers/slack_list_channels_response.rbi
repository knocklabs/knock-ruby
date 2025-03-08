# typed: strong

module Knock
  module Models
    module Providers
      class SlackListChannelsResponse < Knock::BaseModel
        sig { returns(T.nilable(String)) }
        def next_cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def next_cursor=(_)
        end

        sig { returns(T::Array[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel]) }
        def slack_channels
        end

        sig do
          params(_: T::Array[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel])
            .returns(T::Array[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel])
        end
        def slack_channels=(_)
        end

        sig do
          params(
            next_cursor: T.nilable(String),
            slack_channels: T::Array[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel]
          )
            .returns(T.attached_class)
        end
        def self.new(next_cursor:, slack_channels:)
        end

        sig do
          override
            .returns(
              {
                next_cursor: T.nilable(String),
                slack_channels: T::Array[Knock::Models::Providers::SlackListChannelsResponse::SlackChannel]
              }
            )
        end
        def to_hash
        end

        class SlackChannel < Knock::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def context_team_id
          end

          sig { params(_: String).returns(String) }
          def context_team_id=(_)
          end

          sig { returns(T::Boolean) }
          def is_im
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_im=(_)
          end

          sig { returns(T::Boolean) }
          def is_private
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_private=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

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
          def self.new(id:, context_team_id:, is_im:, is_private:, name:)
          end

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
          def to_hash
          end
        end
      end
    end
  end
end
