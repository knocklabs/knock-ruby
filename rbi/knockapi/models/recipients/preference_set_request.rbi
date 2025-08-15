# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PreferenceSetRequest,
              Knockapi::Internal::AnyHash
            )
          end

        # Controls how the preference set is persisted. 'replace' will completely replace
        # the preference set, 'merge' will merge with existing preferences.
        sig do
          returns(
            T.nilable(
              Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::OrSymbol
            )
          )
        end
        attr_reader :_persistence_strategy

        sig do
          params(
            _persistence_strategy:
              Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::OrSymbol
          ).void
        end
        attr_writer :_persistence_strategy

        # An object where the key is the category and the values are the preference
        # settings for that category.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                )
              ]
            )
          )
        end
        attr_accessor :categories

        # Channel type preferences.
        sig do
          returns(T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes))
        end
        attr_reader :channel_types

        sig do
          params(
            channel_types:
              T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes::OrHash)
          ).void
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
                  Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
              ]
            )
          )
        end
        attr_accessor :workflows

        # A request to set a preference set for a recipient.
        sig do
          params(
            _persistence_strategy:
              Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::OrSymbol,
            categories:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject::OrHash
                  )
                ]
              ),
            channel_types:
              T.nilable(
                Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
              ),
            workflows:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject::OrHash
                  )
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Controls how the preference set is persisted. 'replace' will completely replace
          # the preference set, 'merge' will merge with existing preferences.
          _persistence_strategy: nil,
          # An object where the key is the category and the values are the preference
          # settings for that category.
          categories: nil,
          # Channel type preferences.
          channel_types: nil,
          # An object where the key is the workflow key and the values are the preference
          # settings for that workflow.
          workflows: nil
        )
        end

        sig do
          override.returns(
            {
              _persistence_strategy:
                Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::OrSymbol,
              categories:
                T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      T::Boolean,
                      Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
                    )
                  ]
                ),
              channel_types:
                T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
              workflows:
                T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      T::Boolean,
                      Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
                    )
                  ]
                )
            }
          )
        end
        def to_hash
        end

        # Controls how the preference set is persisted. 'replace' will completely replace
        # the preference set, 'merge' will merge with existing preferences.
        module PersistenceStrategy
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MERGE =
            T.let(
              :merge,
              Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::TaggedSymbol
            )
          REPLACE =
            T.let(
              :replace,
              Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetRequest::PersistenceStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
              )
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject,
                  Knockapi::Internal::AnyHash
                )
              end

            # Channel type preferences.
            sig do
              returns(
                T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes)
              )
            end
            attr_reader :channel_types

            sig do
              params(
                channel_types:
                  T.nilable(
                    Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
                  )
              ).void
            end
            attr_writer :channel_types

            # A list of conditions to apply to a channel type.
            sig { returns(T.nilable(T::Array[Knockapi::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            # types or conditions.
            sig do
              params(
                channel_types:
                  T.nilable(
                    Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
                  ),
                conditions: T.nilable(T::Array[Knockapi::Condition::OrHash])
              ).returns(T.attached_class)
            end
            def self.new(
              # Channel type preferences.
              channel_types: nil,
              # A list of conditions to apply to a channel type.
              conditions: nil
            )
            end

            sig do
              override.returns(
                {
                  channel_types:
                    T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
                  conditions: T.nilable(T::Array[Knockapi::Condition])
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetRequest::Category::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject,
                  Knockapi::Internal::AnyHash
                )
              end

            # Channel type preferences.
            sig do
              returns(
                T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes)
              )
            end
            attr_reader :channel_types

            sig do
              params(
                channel_types:
                  T.nilable(
                    Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
                  )
              ).void
            end
            attr_writer :channel_types

            # A list of conditions to apply to a channel type.
            sig { returns(T.nilable(T::Array[Knockapi::Condition])) }
            attr_accessor :conditions

            # The settings object for a workflow or category, where you can specify channel
            # types or conditions.
            sig do
              params(
                channel_types:
                  T.nilable(
                    Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
                  ),
                conditions: T.nilable(T::Array[Knockapi::Condition::OrHash])
              ).returns(T.attached_class)
            end
            def self.new(
              # Channel type preferences.
              channel_types: nil,
              # A list of conditions to apply to a channel type.
              conditions: nil
            )
            end

            sig do
              override.returns(
                {
                  channel_types:
                    T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
                  conditions: T.nilable(T::Array[Knockapi::Condition])
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Knockapi::Recipients::PreferenceSetRequest::Workflow::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
