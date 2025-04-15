# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute categories
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1}, nil]
        optional :categories,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::PreferenceSetRequest::Category] },
                 nil?: true

        # @!attribute channel_types
        #   Channel type preferences
        #
        #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

        # @!attribute workflows
        #
        #   @return [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1}, nil]
        optional :workflows,
                 -> { Knockapi::Internal::Type::HashOf[union: Knockapi::Models::Recipients::PreferenceSetRequest::Workflow] },
                 nil?: true

        # @!parse
        #   # Set preferences for a recipient
        #   #
        #   # @param categories [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1}, nil]
        #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
        #   # @param workflows [Hash{Symbol=>Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1}, nil]
        #   #
        #   def initialize(categories: nil, channel_types: nil, workflows: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1 }

          class UnionMember1 < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute [r] conditions
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @return [Array<Knockapi::Models::Condition>]
            #   attr_writer :conditions

            # @!parse
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1)]
          #   def self.variants; end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1 }

          class UnionMember1 < Knockapi::Internal::Type::BaseModel
            # @!attribute channel_types
            #   Channel type preferences
            #
            #   @return [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            optional :channel_types, -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes }, nil?: true

            # @!attribute [r] conditions
            #
            #   @return [Array<Knockapi::Models::Condition>, nil]
            optional :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @return [Array<Knockapi::Models::Condition>]
            #   attr_writer :conditions

            # @!parse
            #   # @param channel_types [Knockapi::Models::Recipients::PreferenceSetChannelTypes, nil]
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(channel_types: nil, conditions: nil, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1)]
          #   def self.variants; end
        end
      end
    end
  end
end
