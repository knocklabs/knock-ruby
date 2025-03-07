# frozen_string_literal: true

module Knock
  module Models
    class PreferenceSetRequest < Knock::BaseModel
      # @!attribute categories
      #   A setting for a preference set, where the key in the object is the category, and
      #     the values are the preference settings for that category.
      #
      #   @return [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      optional :categories,
               -> { Knock::HashOf[union: Knock::Models::PreferenceSetRequest::Category] },
               nil?: true

      # @!attribute channel_types
      #   Channel type preferences
      #
      #   @return [Knock::Models::PreferenceSetChannelTypes, nil]
      optional :channel_types, -> { Knock::Models::PreferenceSetChannelTypes }, nil?: true

      # @!attribute workflows
      #   A setting for a preference set, where the key in the object is the workflow key,
      #     and the values are the preference settings for that workflow.
      #
      #   @return [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      optional :workflows,
               -> { Knock::HashOf[union: Knock::Models::PreferenceSetRequest::Workflow] },
               nil?: true

      # @!parse
      #   # Set preferences for a recipient
      #   #
      #   # @param categories [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      #   # @param channel_types [Knock::Models::PreferenceSetChannelTypes, nil]
      #   # @param workflows [Hash{Symbol=>Boolean, Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      #   #
      #   def initialize(categories: nil, channel_types: nil, workflows: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Workflow or category preferences within a preference set
      class Category < Knock::Union
        variant Knock::BooleanModel

        # The settings object for a workflow or category, where you can specify channel types or conditions.
        variant -> { Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject }

        class PreferenceSetWorkflowCategorySettingObject < Knock::BaseModel
          # @!attribute channel_types
          #   Channel type preferences
          #
          #   @return [Knock::Models::PreferenceSetChannelTypes, nil]
          optional :channel_types, -> { Knock::Models::PreferenceSetChannelTypes }, nil?: true

          # @!attribute conditions
          #
          #   @return [Array<Knock::Models::Condition>, nil]
          optional :conditions, -> { Knock::ArrayOf[Knock::Models::Condition] }, nil?: true

          # @!parse
          #   # The settings object for a workflow or category, where you can specify channel
          #   #   types or conditions.
          #   #
          #   # @param channel_types [Knock::Models::PreferenceSetChannelTypes, nil]
          #   # @param conditions [Array<Knock::Models::Condition>, nil]
          #   #
          #   def initialize(channel_types: nil, conditions: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end

      # @abstract
      #
      # Workflow or category preferences within a preference set
      class Workflow < Knock::Union
        variant Knock::BooleanModel

        # The settings object for a workflow or category, where you can specify channel types or conditions.
        variant -> { Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject }

        class PreferenceSetWorkflowCategorySettingObject < Knock::BaseModel
          # @!attribute channel_types
          #   Channel type preferences
          #
          #   @return [Knock::Models::PreferenceSetChannelTypes, nil]
          optional :channel_types, -> { Knock::Models::PreferenceSetChannelTypes }, nil?: true

          # @!attribute conditions
          #
          #   @return [Array<Knock::Models::Condition>, nil]
          optional :conditions, -> { Knock::ArrayOf[Knock::Models::Condition] }, nil?: true

          # @!parse
          #   # The settings object for a workflow or category, where you can specify channel
          #   #   types or conditions.
          #   #
          #   # @param channel_types [Knock::Models::PreferenceSetChannelTypes, nil]
          #   # @param conditions [Array<Knock::Models::Condition>, nil]
          #   #
          #   def initialize(channel_types: nil, conditions: nil, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
