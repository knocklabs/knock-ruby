# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class InlinePreferenceSetRequestItem < Knockapi::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the preference set
        #
        #   @return [String]
        required :id, String

        # @!attribute categories
        #   An object where the key is the category and the values are the preference
        #   settings for that category.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Category] },
                 nil?: true

        # @!attribute channel_types
        #   Channel type preferences.
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

        # @!attribute workflows
        #   An object where the key is the workflow key and the values are the preference
        #   settings for that workflow.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Workflow] },
                 nil?: true

        # @!method initialize(id:, categories: nil, channel_types: nil, workflows: nil)
        #   Inline set preferences for a recipient, where the key is the preference set name
        #
        #   @param id [String]
        #   @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Category::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   @param conditions [Array<Knockapi::Models::Condition>, nil]
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Category::PreferenceSetWorkflowCategorySettingObject)]
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Workflow::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   @param conditions [Array<Knockapi::Models::Condition>, nil]
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequestItem::Workflow::PreferenceSetWorkflowCategorySettingObject)]
        end
      end

      InlinePreferenceSetRequest =
        Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::InlinePreferenceSetRequestItem }]
    end
  end
end
