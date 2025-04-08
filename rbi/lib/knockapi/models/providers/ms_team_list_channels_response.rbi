# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListChannelsResponse < Knockapi::Internal::Type::BaseModel
        sig { returns(T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel]) }
        attr_accessor :ms_teams_channels

        # The response from a channels for Microsoft Teams provider request
        sig do
          params(
            ms_teams_channels: T::Array[
              T.any(
                Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel,
                Knockapi::Internal::AnyHash
              )
            ]
          )
            .returns(T.attached_class)
        end
        def self.new(ms_teams_channels:); end

        sig do
          override
            .returns(
              {ms_teams_channels: T::Array[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel]}
            )
        end
        def to_hash; end

        class MsTeamsChannel < Knockapi::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :display_name

          sig { returns(T.nilable(String)) }
          attr_reader :created_date_time

          sig { params(created_date_time: String).void }
          attr_writer :created_date_time

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_archived

          sig { params(is_archived: T::Boolean).void }
          attr_writer :is_archived

          sig { returns(T.nilable(String)) }
          attr_reader :membership_type

          sig { params(membership_type: String).void }
          attr_writer :membership_type

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
          def self.new(
            id:,
            display_name:,
            created_date_time: nil,
            description: nil,
            is_archived: nil,
            membership_type: nil
          )
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
          def to_hash; end
        end
      end
    end
  end
end
