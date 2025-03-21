# typed: strong

module Knockapi
  module Models
    module Users
      class BulkSetPreferencesParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        # Set preferences for a recipient
        sig { returns(Knockapi::Models::Recipients::PreferenceSetRequest) }
        def preferences
        end

        sig do
          params(_: T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash))
            .returns(T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash))
        end
        def preferences=(_)
        end

        sig { returns(T::Array[String]) }
        def user_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def user_ids=(_)
        end

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
