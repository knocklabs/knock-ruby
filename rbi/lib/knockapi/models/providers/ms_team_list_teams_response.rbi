# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsResponse < Knockapi::BaseModel
        sig { returns(T::Array[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam]) }
        attr_accessor :ms_teams_teams

        sig { returns(T.nilable(String)) }
        attr_accessor :skip_token

        # The response from a teams for Microsoft Teams provider request
        sig do
          params(
            ms_teams_teams: T::Array[
            T.any(
              Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam,
              Knockapi::Internal::Util::AnyHash
            )
            ],
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
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :display_name

          sig { returns(T.nilable(String)) }
          attr_accessor :description

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
