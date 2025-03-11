# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::BaseModel
        # @!attribute categories
        #   A setting for a preference set, where the key in the object is the category, and
        #     the values are the preference settings for that category.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> { Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSetRequest::Category] },
                 nil?: true

        # @!attribute channel_types
        #   Channel type preferences
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

        # @!attribute workflows
        #   A setting for a preference set, where the key in the object is the workflow key,
        #     and the values are the preference settings for that workflow.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> { Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSetRequest::Workflow] },
                 nil?: true

        # @!parse
        #   # Set preferences for a recipient
        #   #
        #   # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        #   # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   #
        #   def initialize(categories: nil, channel_types: nil, workflows: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # @abstract
        #
        # Workflow or category preferences within a preference set
        class Category < Knockapi::Union
          variant Knockapi::BooleanModel

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # @!attribute channel_types
            #   Channel type preferences
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::ArrayOf[Knockapi::Models::Condition] }, nil?: true

            # @!parse
            #   # The settings object for a workflow or category, where you can specify channel
            #   #   types or conditions.
            #   #
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>, nil]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void
          end
        end

        # @abstract
        #
        # Workflow or category preferences within a preference set
        class Workflow < Knockapi::Union
          variant Knockapi::BooleanModel

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject }

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # @!attribute channel_types
            #   Channel type preferences
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::ArrayOf[Knockapi::Models::Condition] }, nil?: true

            # @!parse
            #   # The settings object for a workflow or category, where you can specify channel
            #   #   types or conditions.
            #   #
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>, nil]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::BaseModel) -> void
          end
        end
      end
    end
  end
end
