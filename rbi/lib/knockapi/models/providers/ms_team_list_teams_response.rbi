# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsResponse < Knockapi::BaseModel
        sig { returns(T::Array[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam]) }
        def ms_teams_teams
        end

        sig do
          params(_: T::Array[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam])
            .returns(T::Array[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam])
        end
        def ms_teams_teams=(_)
        end

        sig { returns(T.nilable(String)) }
        def skip_token
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def skip_token=(_)
        end

        # The response from a teams for Microsoft Teams provider request
        sig do
          params(
            ms_teams_teams: T::Array[T.any(Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam, Knockapi::Util::AnyHash)],
            skip_token: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_teams:, skip_token:)
        end

        sig do
          override
            .returns(
              {
                ms_teams_teams: T::Array[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam],
                skip_token: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class MsTeamsTeam < Knockapi::BaseModel
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
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig do
            params(id: String, display_name: String, description: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(id:, display_name:, description: nil)
          end

          sig { override.returns({id: String, display_name: String, description: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
