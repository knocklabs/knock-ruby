# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSet < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the preference set.
        #
        #   @return [String]
        required :id, String

        # @!attribute categories
        #   An object where the key is the category and the values are the preference
        #   settings for that category.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Category]
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
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Channel::PreferenceSetChannelSetting}, nil]
        optional :channels,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Channel] },
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
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Workflow]
                 },
                 nil?: true

        # @!method initialize(id:, categories: nil, channel_types: nil, channels: nil, commercial_subscribed: nil, workflows: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::PreferenceSet} for more details.
        #
        #   A preference set represents a specific set of notification preferences for a
        #   recipient. A recipient can have multiple preference sets.
        #
        #   @param id [String] Unique identifier for the preference set.
        #
        #   @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
        #
        #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
        #
        #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Channel::PreferenceSetChannelSetting}, nil] Channel preferences.
        #
        #   @param commercial_subscribed [Boolean, nil] Whether the recipient is subscribed to commercial communications. When false, th
        #
        #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute channels
            #   Channel preferences.
            #
            #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting}, nil]
            optional :channels,
                     -> {
                       Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel]
                     },
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
            #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting}, nil] Channel preferences.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.

            # Whether the specific channel (by channel_id) is enabled for the preference set,
            # or a settings object with conditions.
            module Channel
              extend Knockapi::Internal::Type::Union

              variant Knockapi::Internal::Type::Boolean

              # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
              variant -> { Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting }

              class PreferenceSetChannelSetting < Knockapi::Internal::Type::BaseModel
                # @!attribute conditions
                #   A list of conditions to apply to a specific channel.
                #
                #   @return [Array<Knockapi::Models::Condition>]
                required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

                # @!method initialize(conditions:)
                #   A set of settings for a specific channel. Currently, this can only be a list of
                #   conditions to apply.
                #
                #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to a specific channel.
              end

              # @!method self.variants
              #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting)]
            end
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject)]
        end

        # Whether the specific channel (by channel_id) is enabled for the preference set,
        # or a settings object with conditions.
        module Channel
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Recipients::PreferenceSet::Channel::PreferenceSetChannelSetting }

          class PreferenceSetChannelSetting < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #   A list of conditions to apply to a specific channel.
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

            # @!method initialize(conditions:)
            #   A set of settings for a specific channel. Currently, this can only be a list of
            #   conditions to apply.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to a specific channel.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Channel::PreferenceSetChannelSetting)]
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute channels
            #   Channel preferences.
            #
            #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting}, nil]
            optional :channels,
                     -> {
                       Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel]
                     },
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
            #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting}, nil] Channel preferences.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.

            # Whether the specific channel (by channel_id) is enabled for the preference set,
            # or a settings object with conditions.
            module Channel
              extend Knockapi::Internal::Type::Union

              variant Knockapi::Internal::Type::Boolean

              # A set of settings for a specific channel. Currently, this can only be a list of conditions to apply.
              variant -> { Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting }

              class PreferenceSetChannelSetting < Knockapi::Internal::Type::BaseModel
                # @!attribute conditions
                #   A list of conditions to apply to a specific channel.
                #
                #   @return [Array<Knockapi::Models::Condition>]
                required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

                # @!method initialize(conditions:)
                #   A set of settings for a specific channel. Currently, this can only be a list of
                #   conditions to apply.
                #
                #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to a specific channel.
              end

              # @!method self.variants
              #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::PreferenceSetChannelSetting)]
            end
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject)]
        end
      end
    end
  end
end
