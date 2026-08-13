# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute _persistence_strategy
        #   Controls how the preference set is persisted. 'replace' will completely replace
        #   the preference set, 'merge' will merge with existing preferences.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::PreferenceSetRequest::PersistenceStrategy, nil]
        optional :_persistence_strategy,
                 enum: -> { Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy },
                 api_name: :__persistence_strategy__

        # @!attribute categories
        #   An object where the key is the category and the values are the preference
        #   settings for that category.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSetRequest::Category]
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
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSetRequest::Channel]
                 },
                 nil?: true

        # @!attribute commercial_subscribed
        #   Whether the recipient is subscribed to commercial communications. When false,
        #   the recipient will not receive commercial workflow notifications. Can also be
        #   set to a settings object with conditions that are evaluated at notification send
        #   time.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::CommercialSubscribed::PreferenceSetCommercialSubscribedSetting, nil]
        optional :commercial_subscribed,
                 union: -> { Knockapi::Recipients::PreferenceSetRequest::CommercialSubscribed },
                 nil?: true

        # @!attribute workflows
        #   An object where the key is the workflow key and the values are the preference
        #   settings for that workflow.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSetRequest::Workflow]
                 },
                 nil?: true

        # @!method initialize(_persistence_strategy: nil, categories: nil, channel_types: nil, channels: nil, commercial_subscribed: nil, workflows: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::PreferenceSetRequest} for more details.
        #
        #   A request to set a preference set for a recipient.
        #
        #   @param _persistence_strategy [Symbol, Knockapi::Models::Recipients::PreferenceSetRequest::PersistenceStrategy] Controls how the preference set is persisted. 'replace' will completely replace
        #
        #   @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
        #
        #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
        #
        #   @param channels [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetChannelSetting}, nil] Channel preferences.
        #
        #   @param commercial_subscribed [Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::CommercialSubscribed::PreferenceSetCommercialSubscribedSetting, nil] Whether the recipient is subscribed to commercial communications. When false, th
        #
        #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se

        # Controls how the preference set is persisted. 'replace' will completely replace
        # the preference set, 'merge' will merge with existing preferences.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetRequest#_persistence_strategy
        module PersistenceStrategy
          extend Knockapi::Internal::Type::Enum

          MERGE = :merge
          REPLACE = :replace

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject }

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
                         union: Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject::Channel
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
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject)]
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

        # Whether the recipient is subscribed to commercial communications. When false,
        # the recipient will not receive commercial workflow notifications. Can also be
        # set to a settings object with conditions that are evaluated at notification send
        # time.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetRequest#commercial_subscribed
        module CommercialSubscribed
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for the commercial subscribed preference. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Recipients::PreferenceSetRequest::CommercialSubscribed::PreferenceSetCommercialSubscribedSetting }

          class PreferenceSetCommercialSubscribedSetting < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #   A list of conditions to apply to the commercial subscribed preference.
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }

            # @!method initialize(conditions:)
            #   A set of settings for the commercial subscribed preference. Currently, this can
            #   only be a list of conditions to apply.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>] A list of conditions to apply to the commercial subscribed preference.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::CommercialSubscribed::PreferenceSetCommercialSubscribedSetting)]
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject }

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
                         union: Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel
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
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject)]
        end
      end
    end
  end
end
