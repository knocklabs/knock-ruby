# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListChannelsResponse < Knockapi::BaseModel
        sig { returns(T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel]) }
        def ms_teams_channels
        end

        sig do
          params(_: T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel])
            .returns(T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel])
        end
        def ms_teams_channels=(_)
        end

        sig do
          params(
            ms_teams_channels: T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel]
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_channels:)
        end

        sig do
          override
            .returns(
              {ms_teams_channels: T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel]}
            )
        end
        def to_hash
        end

        class MsTeamsChannel < Knockapi::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def display_name
          end

          sig { params(_: String).returns(String) }
          def display_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def created_date_time
          end

          sig { params(_: String).returns(String) }
          def created_date_time=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def is_archived
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_archived=(_)
          end

          sig { returns(T.nilable(String)) }
          def membership_type
          end

          sig { params(_: String).returns(String) }
          def membership_type=(_)
          end

          sig do
            params(
              id: String,
              display_name: String,
              created_date_time: String,
              description: T.nilable(String),
              is_archived: T::Boolean,
              membership_type: String
            )
              .returns(T.attached_class)
          end
          def self.new(id:, display_name:, created_date_time: nil, description: nil, is_archived: nil, membership_type: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  display_name: String,
                  created_date_time: String,
                  description: T.nilable(String),
                  is_archived: T::Boolean,
                  membership_type: String
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
