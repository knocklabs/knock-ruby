# typed: strong

module Knockapi
  module Models
    module Users
      class BulkSetPreferencesParams < Knockapi::BaseModel
        extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # Set preferences for a recipient
        sig { returns(Knockapi::Models::Recipients::PreferenceSetRequest) }
        attr_reader :preferences

        sig do
          params(preferences: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash))
            .void
        end
        attr_writer :preferences

        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            preferences: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash),
            user_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(preferences:, user_ids:, request_options: {})
        end

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
        def to_hash
        end
      end
    end
  end
end
