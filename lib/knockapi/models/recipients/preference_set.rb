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

        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute categories
        #   An object where the key is the category and the values are the preference
        #   settings for that category.
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :categories,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Category] },
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
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        optional :workflows,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Workflow] },
                 nil?: true

        # @!parse
        #   # A preference set determines whether a recipient should receive a particular type
        #   # of notification. By default all preferences are opted in unless a preference
        #   # explicitly opts the recipient out of the notification
        #   #
        #   # @param id [String]
        #   # @param _typename [String]
        #   # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        #   # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject}, nil]
        #   #
        #   def initialize(id:, _typename:, categories: nil, channel_types: nil, workflows: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject }

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

            # @!parse
            #   # The settings object for a workflow or category, where you can specify channel
            #   # types or conditions.
            #   #
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>, nil]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject)]
          #   def self.variants; end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # The settings object for a workflow or category, where you can specify channel types or conditions.
          variant -> { Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject }

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

            # @!parse
            #   # The settings object for a workflow or category, where you can specify channel
            #   # types or conditions.
            #   #
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>, nil]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject)]
          #   def self.variants; end
        end
      end
    end
  end
end
