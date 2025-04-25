# typed: strong

module Knockapi
  module Models
    module Users
      class BulkSetPreferencesParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A request to set a preference set for a recipient.
        sig { returns(Knockapi::Models::Recipients::PreferenceSetRequest) }
        attr_reader :preferences

        sig do
          params(
            preferences: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)
          )
            .void
        end
        attr_writer :preferences

        # A list of user IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            preferences: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash),
            user_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A request to set a preference set for a recipient.
          preferences:,
          # A list of user IDs.
          user_ids:,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                preferences: Knockapi::Models::Recipients::PreferenceSetRequest,
                user_ids: T::Array[String],
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
