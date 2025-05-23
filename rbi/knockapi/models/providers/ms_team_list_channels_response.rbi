# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListChannelsResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Providers::MsTeamListChannelsResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # List of Microsoft Teams channels.
        sig do
          returns(
            T::Array[
              Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel
            ]
          )
        end
        attr_accessor :ms_teams_channels

        # The response from a Microsoft Teams provider request, containing a list of
        # channels.
        sig do
          params(
            ms_teams_channels:
              T::Array[
                Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of Microsoft Teams channels.
          ms_teams_channels:
        )
        end

        sig do
          override.returns(
            {
              ms_teams_channels:
                T::Array[
                  Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel
                ]
            }
          )
        end
        def to_hash
        end

        class MsTeamsChannel < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel,
                Knockapi::Internal::AnyHash
              )
            end

          # Microsoft Teams channel ID.
          sig { returns(String) }
          attr_accessor :id

          # Microsoft Teams channel name.
          sig { returns(String) }
          attr_accessor :display_name

          # Microsoft Teams channel created date and time.
          sig { returns(T.nilable(String)) }
          attr_reader :created_date_time

          sig { params(created_date_time: String).void }
          attr_writer :created_date_time

          # Microsoft Teams channel description.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Whether the Microsoft Teams channel is archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_archived

          sig { params(is_archived: T::Boolean).void }
          attr_writer :is_archived

          # Microsoft Teams channel membership type.
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
            ).returns(T.attached_class)
          end
          def self.new(
            # Microsoft Teams channel ID.
            id:,
            # Microsoft Teams channel name.
            display_name:,
            # Microsoft Teams channel created date and time.
            created_date_time: nil,
            # Microsoft Teams channel description.
            description: nil,
            # Whether the Microsoft Teams channel is archived.
            is_archived: nil,
            # Microsoft Teams channel membership type.
            membership_type: nil
          )
          end

          sig do
            override.returns(
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
