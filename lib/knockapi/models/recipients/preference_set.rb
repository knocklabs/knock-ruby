# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSet < Knockapi::BaseModel
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
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> { Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Category] },
                 nil?: true

        # @!attribute channel_types
        #   Channel type preferences
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

        # @!attribute workflows
        #   A map of workflows and their settings
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> { Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Workflow] },
                 nil?: true

        # @!parse
        #   # A preference set object.
        #   #
        #   # @param id [String]
        #   # @param _typename [String]
        #   # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        #   # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   #
        #   def initialize(id:, _typename:, categories: nil, channel_types: nil, workflows: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # @abstract
        #
        # Workflow or category preferences within a preference set
        class Category < Knockapi::Union
          variant Knockapi::BooleanModel

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject }

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
          variant -> { Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject }

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
