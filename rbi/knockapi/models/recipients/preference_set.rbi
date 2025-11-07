# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSet < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PreferenceSet,
              Knockapi::Internal::AnyHash
            )
          end

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
                Knockapi::Recipients::PreferenceSet::Category::Variants
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

        # Channel preferences.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSet::Channel::Variants
              ]
            )
          )
        end
        attr_accessor :channels

        # Whether the recipient is subscribed to commercial communications. When false,
        # the recipient will not receive commercial workflow notifications.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :commercial_subscribed

        # An object where the key is the workflow key and the values are the preference
        # settings for that workflow.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSet::Workflow::Variants
              ]
            )
          )
        end
        attr_accessor :workflows

        # A preference set represents a specific set of notification preferences for a
        # recipient. A recipient can have multiple preference sets.
        sig do
          params(
            id: String,
            categories:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::OrHash
                  )
                ]
              ),
            channel_types:
              T.nilable(
                Knockapi::Recipients::PreferenceSetChannelTypes::OrHash
              ),
            channels:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetChannelSetting::OrHash
                  )
                ]
              ),
            commercial_subscribed: T.nilable(T::Boolean),
            workflows:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::OrHash
                  )
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the preference set.
          id:,
          # An object where the key is the category and the values are the preference
          # settings for that category.
          categories: nil,
          # Channel type preferences.
          channel_types: nil,
          # Channel preferences.
          channels: nil,
          # Whether the recipient is subscribed to commercial communications. When false,
          # the recipient will not receive commercial workflow notifications.
          commercial_subscribed: nil,
          # An object where the key is the workflow key and the values are the preference
          # settings for that workflow.
          workflows: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              categories:
                T.nilable(
                  T::Hash[
                    Symbol,
                    Knockapi::Recipients::PreferenceSet::Category::Variants
                  ]
                ),
              channel_types:
                T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
              channels:
                T.nilable(
                  T::Hash[
                    Symbol,
                    Knockapi::Recipients::PreferenceSet::Channel::Variants
                  ]
                ),
              commercial_subscribed: T.nilable(T::Boolean),
              workflows:
                T.nilable(
                  T::Hash[
                    Symbol,
                    Knockapi::Recipients::PreferenceSet::Workflow::Variants
                  ]
                )
            }
          )
        end
        def to_hash
        end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject
              )
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject,
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

            # Channel preferences.
            sig do
              returns(
                T.nilable(
                  T::Hash[
                    Symbol,
                    Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                  ]
                )
              )
            end
            attr_accessor :channels

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
                channels:
                  T.nilable(
                    T::Hash[
                      Symbol,
                      T.any(
                        T::Boolean,
                        Knockapi::Recipients::PreferenceSetChannelSetting::OrHash
                      )
                    ]
                  ),
                conditions: T.nilable(T::Array[Knockapi::Condition::OrHash])
              ).returns(T.attached_class)
            end
            def self.new(
              # Channel type preferences.
              channel_types: nil,
              # Channel preferences.
              channels: nil,
              # A list of conditions to apply to a channel type.
              conditions: nil
            )
            end

            sig do
              override.returns(
                {
                  channel_types:
                    T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
                  channels:
                    T.nilable(
                      T::Hash[
                        Symbol,
                        Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                      ]
                    ),
                  conditions: T.nilable(T::Array[Knockapi::Condition])
                }
              )
            end
            def to_hash
            end

            # Whether the specific channel (by channel_id) is enabled for the preference set,
            # or a settings object with conditions.
            module Channel
              extend Knockapi::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetChannelSetting
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Knockapi::Recipients::PreferenceSet::Category::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          sig do
            override.returns(
              T::Array[Knockapi::Recipients::PreferenceSet::Category::Variants]
            )
          end
          def self.variants
          end
        end

        # Whether the specific channel (by channel_id) is enabled for the preference set,
        # or a settings object with conditions.
        module Channel
          extend Knockapi::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                Knockapi::Recipients::PreferenceSetChannelSetting
              )
            end

          sig do
            override.returns(
              T::Array[Knockapi::Recipients::PreferenceSet::Channel::Variants]
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
                Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject
              )
            end

          class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject,
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

            # Channel preferences.
            sig do
              returns(
                T.nilable(
                  T::Hash[
                    Symbol,
                    Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                  ]
                )
              )
            end
            attr_accessor :channels

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
                channels:
                  T.nilable(
                    T::Hash[
                      Symbol,
                      T.any(
                        T::Boolean,
                        Knockapi::Recipients::PreferenceSetChannelSetting::OrHash
                      )
                    ]
                  ),
                conditions: T.nilable(T::Array[Knockapi::Condition::OrHash])
              ).returns(T.attached_class)
            end
            def self.new(
              # Channel type preferences.
              channel_types: nil,
              # Channel preferences.
              channels: nil,
              # A list of conditions to apply to a channel type.
              conditions: nil
            )
            end

            sig do
              override.returns(
                {
                  channel_types:
                    T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
                  channels:
                    T.nilable(
                      T::Hash[
                        Symbol,
                        Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                      ]
                    ),
                  conditions: T.nilable(T::Array[Knockapi::Condition])
                }
              )
            end
            def to_hash
            end

            # Whether the specific channel (by channel_id) is enabled for the preference set,
            # or a settings object with conditions.
            module Channel
              extend Knockapi::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetChannelSetting
                  )
                end

              sig do
                override.returns(
                  T::Array[
                    Knockapi::Recipients::PreferenceSet::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          sig do
            override.returns(
              T::Array[Knockapi::Recipients::PreferenceSet::Workflow::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
