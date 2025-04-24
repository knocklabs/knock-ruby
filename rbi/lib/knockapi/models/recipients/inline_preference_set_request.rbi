# typed: strong

module Knockapi
  module Models
    module Recipients
      class InlinePreferenceSetRequest < Knockapi::Internal::Type::BaseModel
        # Unique identifier for the preference set.
        sig { returns(String) }
        attr_accessor :id

        # An object where the key is the category and the values are the preference
        # settings for that category.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::InlinePreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                )
              ]
            )
          )
        end
        attr_accessor :categories

        # Channel type preferences.
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
        attr_reader :channel_types

        sig do
          params(
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :channel_types

        # An object where the key is the workflow key and the values are the preference
        # settings for that workflow.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::InlinePreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
              ]
            )
          )
        end
        attr_accessor :workflows

        sig do
          params(
            id: String,
            categories: T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::InlinePreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject,
                  Knockapi::Internal::AnyHash
                )
              ]
            ),
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
            workflows: T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::InlinePreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject,
                  Knockapi::Internal::AnyHash
                )
              ]
            )
          )
            .returns(T.attached_class)
        end
        def self.new(id:, categories: nil, channel_types: nil, workflows: nil); end

        sig do
          override
            .returns(
              {
                id: String,
                categories: T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      T::Boolean,
                      Knockapi::Models::Recipients::InlinePreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                    )
                  ]
                ),
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                workflows: T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      T::Boolean,
                      Knockapi::Models::Recipients::InlinePreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                    )
                  ]
                )
              }
            )
        end
        def to_hash; end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # Channel type preferences.
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            # A list of conditions to apply to a channel type.
            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            # types or conditions.
            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
                conditions: T.nilable(T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil); end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T.nilable(T::Array[Knockapi::Models::Condition])
                  }
                )
            end
            def to_hash; end
          end

          sig do
            override
              .returns(
                [T::Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject]
              )
          end
          def self.variants; end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            # Channel type preferences.
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            # A list of conditions to apply to a channel type.
            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            # types or conditions.
            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
                conditions: T.nilable(T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)])
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil); end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T.nilable(T::Array[Knockapi::Models::Condition])
                  }
                )
            end
            def to_hash; end
          end

          sig do
            override
              .returns(
                [T::Boolean, Knockapi::Models::Recipients::InlinePreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
