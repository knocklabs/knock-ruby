# typed: strong

module Knock
  module Models
    class PreferenceSetRequest < Knock::BaseModel
      sig do
        returns(
          T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
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
              Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
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
                Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
      end
      def categories=(_)
      end

      sig { returns(T.nilable(Knock::Models::PreferenceSetChannelTypes)) }
      def channel_types
      end

      sig do
        params(_: T.nilable(Knock::Models::PreferenceSetChannelTypes))
          .returns(T.nilable(Knock::Models::PreferenceSetChannelTypes))
      end
      def channel_types=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
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
              Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
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
                Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
              ]
            )
          )
      end
      def workflows=(_)
      end

      sig do
        params(
          categories: T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
            )
            ]
          ),
          channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
          workflows: T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
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
                  Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                )
                ]
              ),
              channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
              workflows: T.nilable(
                T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
                ]
              )
            }
          )
      end
      def to_hash
      end

      class Category < Knock::Union
        abstract!

        class PreferenceSetWorkflowCategorySettingObject < Knock::BaseModel
          sig { returns(T.nilable(Knock::Models::PreferenceSetChannelTypes)) }
          def channel_types
          end

          sig do
            params(_: T.nilable(Knock::Models::PreferenceSetChannelTypes))
              .returns(T.nilable(Knock::Models::PreferenceSetChannelTypes))
          end
          def channel_types=(_)
          end

          sig { returns(T.nilable(T::Array[Knock::Models::Condition])) }
          def conditions
          end

          sig do
            params(_: T.nilable(T::Array[Knock::Models::Condition]))
              .returns(T.nilable(T::Array[Knock::Models::Condition]))
          end
          def conditions=(_)
          end

          sig do
            params(
              channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
              conditions: T.nilable(T::Array[Knock::Models::Condition])
            )
              .returns(T.attached_class)
          end
          def self.new(channel_types: nil, conditions: nil)
          end

          sig do
            override
              .returns(
                {
                  channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
                  conditions: T.nilable(T::Array[Knock::Models::Condition])
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
                [[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject]]
              )
          end
          private def variants
          end
        end
      end

      class Workflow < Knock::Union
        abstract!

        class PreferenceSetWorkflowCategorySettingObject < Knock::BaseModel
          sig { returns(T.nilable(Knock::Models::PreferenceSetChannelTypes)) }
          def channel_types
          end

          sig do
            params(_: T.nilable(Knock::Models::PreferenceSetChannelTypes))
              .returns(T.nilable(Knock::Models::PreferenceSetChannelTypes))
          end
          def channel_types=(_)
          end

          sig { returns(T.nilable(T::Array[Knock::Models::Condition])) }
          def conditions
          end

          sig do
            params(_: T.nilable(T::Array[Knock::Models::Condition]))
              .returns(T.nilable(T::Array[Knock::Models::Condition]))
          end
          def conditions=(_)
          end

          sig do
            params(
              channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
              conditions: T.nilable(T::Array[Knock::Models::Condition])
            )
              .returns(T.attached_class)
          end
          def self.new(channel_types: nil, conditions: nil)
          end

          sig do
            override
              .returns(
                {
                  channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
                  conditions: T.nilable(T::Array[Knock::Models::Condition])
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
                [[NilClass, T::Boolean], [NilClass, Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
