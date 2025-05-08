# typed: strong

module Knockapi
  module Models
    module Users
      class BulkSetPreferencesParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # A request to set a preference set for a recipient.
        sig { returns(Knockapi::Recipients::PreferenceSetRequest) }
        attr_reader :preferences

        sig do
          params(
            preferences: Knockapi::Recipients::PreferenceSetRequest::OrHash
          ).void
        end
        attr_writer :preferences

        # A list of user IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            preferences: Knockapi::Recipients::PreferenceSetRequest::OrHash,
            user_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A request to set a preference set for a recipient.
          preferences:,
          # A list of user IDs.
          user_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              preferences: Knockapi::Recipients::PreferenceSetRequest,
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
