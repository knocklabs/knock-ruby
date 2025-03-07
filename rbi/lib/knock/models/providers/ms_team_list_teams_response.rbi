# typed: strong

module Knock
  module Models
    module Providers
      class MsTeamListTeamsResponse < Knock::BaseModel
        sig { returns(T::Array[Knock::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam]) }
        def ms_teams_teams
        end

        sig do
          params(_: T::Array[Knock::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam])
            .returns(T::Array[Knock::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam])
        end
        def ms_teams_teams=(_)
        end

        sig { returns(T.nilable(String)) }
        def skip_token
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def skip_token=(_)
        end

        sig do
          params(
            ms_teams_teams: T::Array[Knock::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam],
            skip_token: T.nilable(String)
          )
            .void
        end
        def initialize(ms_teams_teams:, skip_token:)
        end

        sig do
          override
            .returns(
              {
                ms_teams_teams: T::Array[Knock::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam],
                skip_token: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class MsTeamsTeam < Knock::BaseModel
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

          sig { params(id: String, display_name: String, description: T.nilable(String)).void }
          def initialize(id:, display_name:, description: nil)
          end

          sig { override.returns({id: String, display_name: String, description: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
