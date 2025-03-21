# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSet < Knockapi::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def _typename
        end

        sig { params(_: String).returns(String) }
        def _typename=(_)
        end

        # A map of categories and their settings
        sig do
          returns(
            T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
        end
        def categories
        end

        sig do
          params(
            _: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
            .returns(
              T.nilable(
                T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
                )
                ]
              )
            )
        end
        def categories=(_)
        end

        # Channel type preferences
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
        def channel_types
        end

        sig do
          params(
            _: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
            )
        end
        def channel_types=(_)
        end

        # A map of workflows and their settings
        sig do
          returns(
            T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
        end
        def workflows
        end

        sig do
          params(
            _: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
            .returns(
              T.nilable(
                T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
                ]
              )
            )
        end
        def workflows=(_)
        end

        # A preference set object.
        sig do
          params(
            id: String,
            _typename: String,
            categories: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            ),
            channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
            workflows: T.nilable(
              T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
            .returns(T.attached_class)
        end
        def self.new(id:, _typename:, categories: nil, channel_types: nil, workflows: nil)
        end

        sig do
          override
            .returns(
              {
                id: String,
                _typename: String,
                categories: T.nilable(
                  T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
                  )
                  ]
                ),
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                workflows: T.nilable(
                  T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
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
                  Knockapi::Models::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
                )
              }
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            def channel_types
            end

            sig do
              params(
                _: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
              )
                .returns(
                  T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
                )
            end
            def channel_types=(_)
            end

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            def conditions
            end

            sig do
              params(_: T.nilable(T::Array[Knockapi::Models::Condition]))
                .returns(T.nilable(T::Array[Knockapi::Models::Condition]))
            end
            def conditions=(_)
            end

            # The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            sig do
              params(
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                conditions: T.nilable(T::Array[Knockapi::Models::Condition])
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
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
              }
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            def channel_types
            end

            sig do
              params(
                _: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
              )
                .returns(
                  T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Util::AnyHash))
                )
            end
            def channel_types=(_)
            end

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            def conditions
            end

            sig do
              params(_: T.nilable(T::Array[Knockapi::Models::Condition]))
                .returns(T.nilable(T::Array[Knockapi::Models::Condition]))
            end
            def conditions=(_)
            end

            # The settings object for a workflow or category, where you can specify channel
            #   types or conditions.
            sig do
              params(
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                conditions: T.nilable(T::Array[Knockapi::Models::Condition])
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
        end
      end
    end
  end
end
