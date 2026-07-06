# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Bulk#set_preferences
      class BulkSetPreferencesParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute preferences
        #   A preference set to apply in a bulk operation. Always replaces existing
        #   preferences for the specified set.
        #
        #   @return [Knockapi::Models::Users::BulkSetPreferencesParams::Preferences]
        required :preferences, -> { Knockapi::Users::BulkSetPreferencesParams::Preferences }

        # @!attribute user_ids
        #   A list of user IDs.
        #
        #   @return [Array<String>]
        required :user_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(preferences:, user_ids:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Users::BulkSetPreferencesParams} for more details.
        #
        #   @param preferences [Knockapi::Models::Users::BulkSetPreferencesParams::Preferences] A preference set to apply in a bulk operation. Always replaces existing preferen
        #
        #   @param user_ids [Array<String>] A list of user IDs.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        class Preferences < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   Identifier for the preference set to update. Can be `default` or a tenant ID.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute categories
          #   An object where the key is the category and the values are the preference
          #   settings for that category.
          #
          #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
          optional :categories,
                   -> {
                     Knockapi::Internal::Type::HashOf[union: Knockapi::Users::BulkSetPreferencesParams::Preferences::Category]
                   },
                   nil?: true

          # @!attribute channel_types
          #   Channel type preferences.
          #
          #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
          optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

          # @!attribute channels
          #   Channel preferences.
          #
          #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil]
          optional :channels,
                   -> {
                     Knockapi::Internal::Type::HashOf[union: Knockapi::Users::BulkSetPreferencesParams::Preferences::Channel]
                   },
                   nil?: true

          # @!attribute commercial_subscribed
          #   Whether the recipient is subscribed to commercial communications. When false,
          #   the recipient will not receive commercial workflow notifications.
          #
          #   @return [Boolean, nil]
          optional :commercial_subscribed, Knockapi::Internal::Type::Boolean, nil?: true

          # @!attribute workflows
          #   An object where the key is the workflow key and the values are the preference
          #   settings for that workflow.
          #
          #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
          optional :workflows,
                   -> {
                     Knockapi::Internal::Type::HashOf[union: Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow]
                   },
                   nil?: true

          # @!method initialize(id: nil, categories: nil, channel_types: nil, channels: nil, commercial_subscribed: nil, workflows: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Users::BulkSetPreferencesParams::Preferences} for more
          #   details.
          #
          #   A preference set to apply in a bulk operation. Always replaces existing
          #   preferences for the specified set.
          #
          #   @param id [String] Identifier for the preference set to update. Can be `default` or a tenant ID.
          #
          #   @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
          #
          #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
          #
          #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil] Channel preferences.
          #
          #   @param commercial_subscribed [Boolean, nil] Whether the recipient is subscribed to commercial communications. When false, th
          #
          #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se

          # Workflow or category preferences within a preference set
          module Category
            extend Knockapi::Internal::Type::Union

            variant Knockapi::Internal::Type::Boolean

            # The settings object for a workflow or category, where you can specify channel types or conditions.
            variant -> { Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject }

            class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
              # @!attribute channel_types
              #   Channel type preferences.
              #
              #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
              optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

              # @!attribute channels
              #   Channel preferences.
              #
              #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil]
              optional :channels,
                       -> do
                         Knockapi::Internal::Type::HashOf[
                           union: Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject::Channel
                         ]
                       end,
                       nil?: true

              # @!attribute conditions
              #   A list of conditions to apply to a channel type.
              #
              #   @return [Array<Knockapi::Models::Condition>, nil]
              optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

              # @!method initialize(channel_types: nil, channels: nil, conditions: nil)
              #   The settings object for a workflow or category, where you can specify channel
              #   types or conditions.
              #
              #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
              #
              #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil] Channel preferences.
              #
              #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.

              # Whether the specific channel (by channel_id) is enabled for the preference set,
              # or a settings object with conditions.
              module Channel
                extend Knockapi::Internal::Type::Union

                variant Knockapi::Internal::Type::Boolean

                # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
                variant -> { Knockapi::Recipients::PreferenceSetChannelSetting }

                # @!method self.variants
                #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting)]
              end
            end

            # @!method self.variants
            #   @return [Array(Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject)]
          end

          # Whether the specific channel (by channel_id) is enabled for the preference set,
          # or a settings object with conditions.
          module Channel
            extend Knockapi::Internal::Type::Union

            variant Knockapi::Internal::Type::Boolean

            # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
            variant -> { Knockapi::Recipients::PreferenceSetChannelSetting }

            # @!method self.variants
            #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting)]
          end

          # Workflow or category preferences within a preference set
          module Workflow
            extend Knockapi::Internal::Type::Union

            variant Knockapi::Internal::Type::Boolean

            # The settings object for a workflow or category, where you can specify channel types or conditions.
            variant -> { Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject }

            class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
              # @!attribute channel_types
              #   Channel type preferences.
              #
              #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
              optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

              # @!attribute channels
              #   Channel preferences.
              #
              #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil]
              optional :channels,
                       -> do
                         Knockapi::Internal::Type::HashOf[
                           union: Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel
                         ]
                       end,
                       nil?: true

              # @!attribute conditions
              #   A list of conditions to apply to a channel type.
              #
              #   @return [Array<Knockapi::Models::Condition>, nil]
              optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

              # @!method initialize(channel_types: nil, channels: nil, conditions: nil)
              #   The settings object for a workflow or category, where you can specify channel
              #   types or conditions.
              #
              #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
              #
              #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil] Channel preferences.
              #
              #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.

              # Whether the specific channel (by channel_id) is enabled for the preference set,
              # or a settings object with conditions.
              module Channel
                extend Knockapi::Internal::Type::Union

                variant Knockapi::Internal::Type::Boolean

                # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
                variant -> { Knockapi::Recipients::PreferenceSetChannelSetting }

                # @!method self.variants
                #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting)]
              end
            end

            # @!method self.variants
            #   @return [Array(Boolean, Knockapi::Models::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject)]
          end
        end
      end
    end
  end
end
