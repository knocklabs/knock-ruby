# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::PreferenceCenter#get_config
      class PreferenceCenterGetConfigResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute account_name
        #   The name of the account that the preference center is associated with.
        #
        #   @return [String, nil]
        required :account_name, String, nil?: true

        # @!attribute branding
        #   The branding for the preference center, sourced from public environment
        #   variables.
        #
        #   @return [Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding]
        required :branding, -> { Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding }

        # @!attribute config
        #   The preference center configuration data containing the rows to display.
        #
        #   @return [Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config]
        required :config, -> { Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config }

        # @!attribute enabled
        #   Whether the preference center is enabled for this environment.
        #
        #   @return [Boolean]
        required :enabled, Knockapi::Internal::Type::Boolean

        # @!attribute user_email
        #   A display label for the user that the preference center is associated with,
        #   resolved as email, then user id.
        #
        #   @return [String, nil]
        required :user_email, String, nil?: true

        # @!attribute knock_branding_required
        #   Whether Knock branding is required in the preference center.
        #
        #   @return [Boolean, nil]
        optional :knock_branding_required, Knockapi::Internal::Type::Boolean

        # @!method initialize(account_name:, branding:, config:, enabled:, user_email:, knock_branding_required: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::PreferenceCenterGetConfigResponse} for more details.
        #
        #   The preference center configuration for an environment. Controls whether the
        #   preference center is enabled and defines the rows displayed in the UI.
        #
        #   @param account_name [String, nil] The name of the account that the preference center is associated with.
        #
        #   @param branding [Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding] The branding for the preference center, sourced from public environment variable
        #
        #   @param config [Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config] The preference center configuration data containing the rows to display.
        #
        #   @param enabled [Boolean] Whether the preference center is enabled for this environment.
        #
        #   @param user_email [String, nil] A display label for the user that the preference center is associated with, reso
        #
        #   @param knock_branding_required [Boolean] Whether Knock branding is required in the preference center.

        # @see Knockapi::Models::Users::PreferenceCenterGetConfigResponse#branding
        class Branding < Knockapi::Models::Users::PreferenceCenterBrandingConfig
          # @!attribute dark
          #   The branding for the preference center, sourced from public environment
          #   variables.
          #
          #   @return [Knockapi::Models::Users::PreferenceCenterBrandingConfig, nil]
          optional :dark, -> { Knockapi::Users::PreferenceCenterBrandingConfig }

          # @!method initialize(dark: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding} for more
          #   details.
          #
          #   The branding for the preference center, sourced from public environment
          #   variables.
          #
          #   @param dark [Knockapi::Models::Users::PreferenceCenterBrandingConfig] The branding for the preference center, sourced from public environment variable
        end

        # @see Knockapi::Models::Users::PreferenceCenterGetConfigResponse#config
        class Config < Knockapi::Internal::Type::BaseModel
          # @!attribute body
          #   The body text displayed below the title.
          #
          #   @return [String]
          required :body, String

          # @!attribute rows
          #   An ordered list of rows to display in the preference center.
          #
          #   @return [Array<Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row>]
          required :rows,
                   -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row] }

          # @!attribute title
          #   The title displayed at the top of the preference center.
          #
          #   @return [String]
          required :title, String

          # @!attribute show_account_name
          #   Whether the account name should be displayed in the preference center.
          #
          #   @return [Boolean, nil]
          optional :show_account_name, Knockapi::Internal::Type::Boolean

          # @!method initialize(body:, rows:, title:, show_account_name: nil)
          #   The preference center configuration data containing the rows to display.
          #
          #   @param body [String] The body text displayed below the title.
          #
          #   @param rows [Array<Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row>] An ordered list of rows to display in the preference center.
          #
          #   @param title [String] The title displayed at the top of the preference center.
          #
          #   @param show_account_name [Boolean] Whether the account name should be displayed in the preference center.

          class Row < Knockapi::Internal::Type::BaseModel
            # @!attribute name
            #   The display name of the preference row.
            #
            #   @return [String]
            required :name, String

            # @!attribute type
            #   The type of this preference row. `workflow` targets a workflow, `channel`
            #   targets a specific channel, `category` targets a workflow category,
            #   `channel_types` controls per-channel-type opt-in/out, and
            #   `commercial_subscribed` is the commercial notification toggle.
            #
            #   @return [Symbol, Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type]
            required :type, enum: -> { Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type }

            # @!attribute channel_types
            #   The list of channel types this preference is scoped to. An empty list (or
            #   `null`) means the preference applies to all channel types. Present for
            #   `workflow`, `category`, and `channel_types` types.
            #
            #   @return [Array<Symbol, Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType>, nil]
            optional :channel_types,
                     -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType] },
                     nil?: true

            # @!attribute description
            #   A description shown below the preference row name.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute identifier
            #   The category name, workflow key, or channel ID this row controls (e.g.
            #   `marketing`, `new-project-mentions`, or a channel UUID). Present for `workflow`,
            #   `channel`, and `category` types.
            #
            #   @return [String, nil]
            optional :identifier, String, nil?: true

            # @!method initialize(name:, type:, channel_types: nil, description: nil, identifier: nil)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row} for
            #   more details.
            #
            #   A preference row in the preference center configuration.
            #
            #   @param name [String] The display name of the preference row.
            #
            #   @param type [Symbol, Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type] The type of this preference row. `workflow` targets a workflow, `channel` target
            #
            #   @param channel_types [Array<Symbol, Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType>, nil] The list of channel types this preference is scoped to. An empty list (or `null`
            #
            #   @param description [String] A description shown below the preference row name.
            #
            #   @param identifier [String, nil] The category name, workflow key, or channel ID this row controls (e.g. `marketin

            # The type of this preference row. `workflow` targets a workflow, `channel`
            # targets a specific channel, `category` targets a workflow category,
            # `channel_types` controls per-channel-type opt-in/out, and
            # `commercial_subscribed` is the commercial notification toggle.
            #
            # @see Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row#type
            module Type
              extend Knockapi::Internal::Type::Enum

              WORKFLOW = :workflow
              CHANNEL = :channel
              CATEGORY = :category
              CHANNEL_TYPES = :channel_types
              COMMERCIAL_SUBSCRIBED = :commercial_subscribed

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module ChannelType
              extend Knockapi::Internal::Type::Enum

              EMAIL = :email
              IN_APP = :in_app
              IN_APP_FEED = :in_app_feed
              IN_APP_GUIDE = :in_app_guide
              SMS = :sms
              PUSH = :push
              CHAT = :chat
              HTTP = :http
              LOG = :log
              DEFERRED_LOG = :deferred_log

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
