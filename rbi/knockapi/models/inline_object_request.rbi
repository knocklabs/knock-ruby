# typed: strong

module Knockapi
  module Models
    class InlineObjectRequest < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::InlineObjectRequest, Knockapi::Internal::AnyHash)
        end

      # Unique identifier for the object.
      sig { returns(String) }
      attr_accessor :id

      # The collection this object belongs to.
      sig { returns(String) }
      attr_accessor :collection

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly,
                Knockapi::Recipients::PushChannelDataDevicesOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            ]
          )
        )
      end
      attr_accessor :channel_data

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # An optional name for the object.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Inline set preferences for a recipient, where the key is the preference set id.
      # Preferences that are set inline will be merged into any existing preferences
      # rather than replacing them.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_accessor :preferences

      # A custom [Object](/concepts/objects) entity which belongs to a collection.
      sig do
        params(
          id: String,
          collection: String,
          channel_data:
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  Knockapi::Recipients::PushChannelDataTokensOnly::OrHash,
                  Knockapi::Recipients::PushChannelDataDevicesOnly::OrHash,
                  Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly::OrHash,
                  Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::OrHash,
                  Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly::OrHash,
                  Knockapi::Recipients::SlackChannelData::OrHash,
                  Knockapi::Recipients::MsTeamsChannelData::OrHash,
                  Knockapi::Recipients::DiscordChannelData::OrHash
                )
              ]
            ),
          created_at: T.nilable(Time),
          name: T.nilable(String),
          preferences:
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSetRequest::OrHash
              ]
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the object.
        id:,
        # The collection this object belongs to.
        collection:,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # Timestamp when the resource was created.
        created_at: nil,
        # An optional name for the object.
        name: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        # Preferences that are set inline will be merged into any existing preferences
        # rather than replacing them.
        preferences: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            collection: String,
            channel_data:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    Knockapi::Recipients::PushChannelDataTokensOnly,
                    Knockapi::Recipients::PushChannelDataDevicesOnly,
                    Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                    Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                    Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                    Knockapi::Recipients::SlackChannelData,
                    Knockapi::Recipients::MsTeamsChannelData,
                    Knockapi::Recipients::DiscordChannelData
                  )
                ]
              ),
            created_at: T.nilable(Time),
            name: T.nilable(String),
            preferences:
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest]
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
