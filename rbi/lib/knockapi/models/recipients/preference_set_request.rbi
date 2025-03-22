# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::BaseModel
        # A setting for a preference set, where the key in the object is the category, and
        #   the values are the preference settings for that category.
        sig do
          returns(
            T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
        end
        attr_accessor :categories

        # Channel type preferences
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
        attr_reader :channel_types

        sig do
          params(
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
          )
            .void
        end
        attr_writer :channel_types

        # A setting for a preference set, where the key in the object is the workflow key,
        #   and the values are the preference settings for that workflow.
        sig do
          returns(
            T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
        end
        attr_accessor :workflows

        # Set preferences for a recipient
        sig do
          params(
            categories: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject,
                Knockapi::Util::AnyHash
              )
              ]
            ),
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash)),
            workflows: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject,
                Knockapi::Util::AnyHash
              )
              ]
            )
          )
            .returns(T.attached_class)
        end
        def self.new(categories: nil, channel_types: nil, workflows: nil)
        end

        sig do
          override
            .returns(
              {
                categories: T.nilable(
                  T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                  )
                  ]
                ),
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                workflows: T.nilable(
                  T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                  )
                  ]
                )
              }
            )
        end
        def to_hash
        end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                )
              }
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash)),
                conditions: T.nilable(T::Array[T.any(Knockapi::Models::Condition, Knockapi::Util::AnyHash)])
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil)
            end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T.nilable(T::Array[Knockapi::Models::Condition])
                  }
                )
            end
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject]
                )
            end
            def variants
            end
          end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
              }
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash)),
                conditions: T.nilable(T::Array[T.any(Knockapi::Models::Condition, Knockapi::Util::AnyHash)])
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil)
            end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T.nilable(T::Array[Knockapi::Models::Condition])
                  }
                )
            end
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject]
                )
            end
            def variants
            end
          end
        end
      end
    end
  end
end
