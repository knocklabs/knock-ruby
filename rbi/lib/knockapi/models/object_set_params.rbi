# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem])) }
      attr_reader :channel_data

      sig do
        params(
          channel_data: T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
        )
          .void
      end
      attr_writer :channel_data

      # The locale of the object. Used for
      # [message localization](/concepts/translations).
      sig { returns(T.nilable(String)) }
      attr_accessor :locale

      # A list of objects that specify the preferences for the user.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :preferences

      # The timezone of the object. Must be a valid
      # [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used for
      # [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      sig do
        params(
          channel_data: T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)],
          locale: T.nilable(String),
          preferences: T.nilable(T.anything),
          timezone: T.nilable(String),
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(channel_data: nil, locale: nil, preferences: nil, timezone: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              channel_data: T::Array[Knockapi::Models::Recipients::InlineChannelDataRequestItem],
              locale: T.nilable(String),
              preferences: T.nilable(T.anything),
              timezone: T.nilable(String),
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
