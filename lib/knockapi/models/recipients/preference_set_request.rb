# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::Internal::Type::BaseModel
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

        # @!method initialize(categories: nil, channel_types: nil, workflows: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::PreferenceSetRequest} for more details.
        #
        #   A request to set a preference set for a recipient.
        #
        #   @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the category and the values are the preference settin
        #
        #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
        #
        #   @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil] An object where the key is the workflow key and the values are the preference se

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> {
            Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
          }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject)]
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> {
            Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
          }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences.
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #   A list of conditions to apply to a channel type.
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Condition] }, nil?: true

            # @!method initialize(channel_types: nil, conditions: nil)
            #   The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            #
            #   @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil] Channel type preferences.
            #
            #   @param conditions [Array<Knockapi::Models::Condition>, nil] A list of conditions to apply to a channel type.
          end

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject)]
        end
      end
    end
  end
end
