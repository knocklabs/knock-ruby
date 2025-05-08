# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest])
        )
      end
      attr_reader :channel_data

      sig do
        params(
          channel_data:
            T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest::OrHash]
        ).void
      end
      attr_writer :channel_data

      # The locale of the object. Used for
      # [message localization](/concepts/translations).
      sig { returns(T.nilable(String)) }
      attr_accessor :locale

      # Inline set preferences for a recipient, where the key is the preference set id.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_reader :preferences

      sig do
        params(
          preferences:
            T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest::OrHash]
        ).void
      end
      attr_writer :preferences

      # The timezone of the object. Must be a
      # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used
      # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      sig do
        params(
          channel_data:
            T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest::OrHash],
          locale: T.nilable(String),
          preferences:
            T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest::OrHash],
          timezone: T.nilable(String),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The locale of the object. Used for
        # [message localization](/concepts/translations).
        locale: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        preferences: nil,
        # The timezone of the object. Must be a
        # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
        # Used
        # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_data:
              T::Hash[Symbol, Knockapi::Recipients::ChannelDataRequest],
            locale: T.nilable(String),
            preferences:
              T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest],
            timezone: T.nilable(String),
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
