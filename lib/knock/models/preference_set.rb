# frozen_string_literal: true

module Knock
  module Models
    class PreferenceSet < Knock::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute categories
      #   A map of categories and their settings
      #
      #   @return [Hash{Symbol=>Boolean, Knock::Models::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      optional :categories, -> { Knock::HashOf[union: Knock::Models::PreferenceSet::Category] }, nil?: true

      # @!attribute channel_types
      #   Channel type preferences
      #
      #   @return [Knock::Models::PreferenceSetChannelTypes, nil]
      optional :channel_types, -> { Knock::Models::PreferenceSetChannelTypes }, nil?: true

      # @!attribute workflows
      #   A map of workflows and their settings
      #
      #   @return [Hash{Symbol=>Boolean, Knock::Models::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      optional :workflows, -> { Knock::HashOf[union: Knock::Models::PreferenceSet::Workflow] }, nil?: true

      # @!parse
      #   # A preference set object.
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param categories [Hash{Symbol=>Boolean, Knock::Models::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
      #   # @param channel_types [Knock::Models::PreferenceSetChannelTypes, nil]
      #   # @param workflows [Hash{Symbol=>Boolean, Knock::Models::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
      #   #
      #   def initialize(id:, _typename:, categories: nil, channel_types: nil, workflows: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Workflow or category preferences within a preference set
      class Category < Knock::Union
        variant Knock::BooleanModel

        # The settings object for a workflow or category, where you can specify channel types or conditions.
        variant -> { Knock::Models::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject }

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
        variant -> { Knock::Models::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject }

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
