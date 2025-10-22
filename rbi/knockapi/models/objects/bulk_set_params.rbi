# typed: strong

module Knockapi
  module Models
    module Objects
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Knockapi::Objects::BulkSetParams, Knockapi::Internal::AnyHash)
          end

        # A list of objects.
        sig { returns(T::Array[Knockapi::Objects::BulkSetParams::Object]) }
        attr_accessor :objects

        sig do
          params(
            objects: T::Array[Knockapi::Objects::BulkSetParams::Object::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of objects.
          objects:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              objects: T::Array[Knockapi::Objects::BulkSetParams::Object],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Object < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Objects::BulkSetParams::Object,
                Knockapi::Internal::AnyHash
              )
            end

          # Unique identifier for the object.
          sig { returns(String) }
          attr_accessor :id

          # A request to set channel data for a type of channel inline.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    Knockapi::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly,
                    Knockapi::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly,
                    Knockapi::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly,
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

          # Inline set preferences for a recipient, where the key is the preference set id.
          # Preferences that are set inline will be merged into any existing preferences
          # rather than replacing them.
          sig do
            returns(
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest]
              )
            )
          end
          attr_accessor :preferences

          # A custom [Object](/concepts/objects) entity which belongs to a collection.
          sig do
            params(
              id: String,
              channel_data:
                T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      Knockapi::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly::OrHash,
                      Knockapi::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly::OrHash,
                      Knockapi::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly::OrHash,
                      Knockapi::Recipients::SlackChannelData::OrHash,
                      Knockapi::Recipients::MsTeamsChannelData::OrHash,
                      Knockapi::Recipients::DiscordChannelData::OrHash
                    )
                  ]
                ),
              created_at: T.nilable(Time),
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
            # A request to set channel data for a type of channel inline.
            channel_data: nil,
            # Timestamp when the resource was created.
            created_at: nil,
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
                channel_data:
                  T.nilable(
                    T::Hash[
                      Symbol,
                      T.any(
                        Knockapi::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly,
                        Knockapi::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly,
                        Knockapi::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly,
                        Knockapi::Recipients::SlackChannelData,
                        Knockapi::Recipients::MsTeamsChannelData,
                        Knockapi::Recipients::DiscordChannelData
                      )
                    ]
                  ),
                created_at: T.nilable(Time),
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
  end
end
