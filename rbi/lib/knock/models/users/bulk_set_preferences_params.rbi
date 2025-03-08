# typed: strong

module Knock
  module Models
    module Users
      class BulkSetPreferencesParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(Knock::Models::PreferenceSetRequest) }
        def preferences
        end

        sig { params(_: Knock::Models::PreferenceSetRequest).returns(Knock::Models::PreferenceSetRequest) }
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
            preferences: Knock::Models::PreferenceSetRequest,
            user_ids: T::Array[String],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(preferences:, user_ids:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                preferences: Knock::Models::PreferenceSetRequest,
                user_ids: T::Array[String],
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
