# typed: strong

module Knockapi
  module Resources
    class Tenants
      sig { returns(Knockapi::Resources::Tenants::Bulk) }
      attr_reader :bulk

      # List tenants for the current environment.
      sig do
        params(
          after: String,
          before: String,
          name: String,
          page_size: Integer,
          tenant_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::Internal::EntriesCursor[Knockapi::Tenant])
      end
      def list(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Filter tenants by name.
        name: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        # Filter tenants by ID.
        tenant_id: nil,
        request_options: {}
      )
      end

      # Delete a tenant and all associated data. This operation cannot be undone.
      sig do
        params(
          id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The unique identifier for the tenant.
        id,
        request_options: {}
      )
      end

      # Get a tenant by ID.
      sig do
        params(
          id: String,
          resolve_full_preference_settings: T::Boolean,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::Tenant)
      end
      def get(
        # The unique identifier for the tenant.
        id,
        # When true, merges environment-level default preferences into the tenant's
        # `settings.preference_set` field before returning the response. Defaults to
        # false.
        resolve_full_preference_settings: nil,
        request_options: {}
      )
      end

      # Sets a tenant within an environment, performing an upsert operation. Any
      # existing properties will be merged with the incoming properties.
      sig do
        params(
          id: String,
          resolve_full_preference_settings: T::Boolean,
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
          name: T.nilable(String),
          settings: Knockapi::TenantSetParams::Settings::OrHash,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::Tenant)
      end
      def set(
        # Path param: The unique identifier for the tenant.
        id,
        # Query param: When true, merges environment-level default preferences into the
        # tenant's `settings.preference_set` field before returning the response. Defaults
        # to false.
        resolve_full_preference_settings: nil,
        # Body param: A request to set channel data for a type of channel inline.
        channel_data: nil,
        # Body param: An optional name for the tenant.
        name: nil,
        # Body param: The settings for the tenant. Includes branding and preference set.
        settings: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
