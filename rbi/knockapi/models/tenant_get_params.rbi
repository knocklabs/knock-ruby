# typed: strong

module Knockapi
  module Models
    class TenantGetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::TenantGetParams, Knockapi::Internal::AnyHash)
        end

      # When true, merges environment-level default preferences into the tenant's
      # `settings.preference_set` field before returning the response. Defaults to
      # false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :resolve_full_preference_settings

      sig { params(resolve_full_preference_settings: T::Boolean).void }
      attr_writer :resolve_full_preference_settings

      sig do
        params(
          resolve_full_preference_settings: T::Boolean,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When true, merges environment-level default preferences into the tenant's
        # `settings.preference_set` field before returning the response. Defaults to
        # false.
        resolve_full_preference_settings: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            resolve_full_preference_settings: T::Boolean,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
