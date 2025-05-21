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
        #   @return [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Category]
                 },
                 nil?: true

        # @!attribute channel_types
        #   Channel type preferences.
        #
        #   @return [Knockapi::Recipients::PreferenceSetChannelTypes, nil]
        optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

        # @!attribute workflows
        #   An object where the key is the workflow key and the values are the preference
        #   settings for that workflow.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> {
                   Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Workflow]
                 },
                 nil?: true

        # @!method initialize(id:, categories: nil, channel_types: nil, workflows: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Recipients::PreferenceSet} for more details.
        #
        #   A preference set represents a specific set of notification preferences for a
        #   recipient. A recipient can have multiple preference sets.
        #
        #   @param id [String] Unique identifier for the preference set.
        #
        #   @param categories [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
        #
        #   @param channel_types [Knockapi::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
        #
        #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> {
            Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
          }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
            #
            #   @param conditions [Array<Knockapi::Condition>, nil] A list of conditions to apply to a channel type.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject)]
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> {
            Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
          }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
            #
            #   @param conditions [Array<Knockapi::Condition>, nil] A list of conditions to apply to a channel type.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject)]
        end
      end
    end
  end
end
