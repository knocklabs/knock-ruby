# typed: strong

module Knockapi
  module Models
    module Users
      class BulkSetPreferencesParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Users::BulkSetPreferencesParams,
              Knockapi::Internal::AnyHash
            )
          end

        # A preference set to apply in a bulk operation. Always replaces existing
        # preferences for the specified set.
        sig { returns(Knockapi::Users::BulkSetPreferencesParams::Preferences) }
        attr_reader :preferences

        sig do
          params(
            preferences:
              Knockapi::Users::BulkSetPreferencesParams::Preferences::OrHash
          ).void
        end
        attr_writer :preferences

        # A list of user IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            preferences:
              Knockapi::Users::BulkSetPreferencesParams::Preferences::OrHash,
            user_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A preference set to apply in a bulk operation. Always replaces existing
          # preferences for the specified set.
          preferences:,
          # A list of user IDs.
          user_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              preferences:
                Knockapi::Users::BulkSetPreferencesParams::Preferences,
              user_ids: T::Array[String],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Preferences < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Users::BulkSetPreferencesParams::Preferences,
                Knockapi::Internal::AnyHash
              )
            end

          # Identifier for the preference set to update. Can be `default` or a tenant ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # An object where the key is the category and the values are the preference
          # settings for that category.
          sig do
            returns(
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    T::Boolean,
                    Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject
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
                  T.any(
                    T::Boolean,
                    Knockapi::Recipients::PreferenceSetChannelSetting
                  )
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
                  T.any(
                    T::Boolean,
                    Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject
                  )
                ]
              )
            )
          end
          attr_accessor :workflows

          # A preference set to apply in a bulk operation. Always replaces existing
          # preferences for the specified set.
          sig do
            params(
              id: String,
              categories:
                T.nilable(
                  T::Hash[
                    Symbol,
                    T.any(
                      T::Boolean,
                      Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject::OrHash
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
                      Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject::OrHash
                    )
                  ]
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifier for the preference set to update. Can be `default` or a tenant ID.
            id: nil,
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
                      T.any(
                        T::Boolean,
                        Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject
                      )
                    ]
                  ),
                channel_types:
                  T.nilable(Knockapi::Recipients::PreferenceSetChannelTypes),
                channels:
                  T.nilable(
                    T::Hash[
                      Symbol,
                      T.any(
                        T::Boolean,
                        Knockapi::Recipients::PreferenceSetChannelSetting
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
                        Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject
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
            extend Knockapi::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  T::Boolean,
                  Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject
                )
              end

            class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject,
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
                      T.any(
                        T::Boolean,
                        Knockapi::Recipients::PreferenceSetChannelSetting
                      )
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
                      T.nilable(
                        Knockapi::Recipients::PreferenceSetChannelTypes
                      ),
                    channels:
                      T.nilable(
                        T::Hash[
                          Symbol,
                          T.any(
                            T::Boolean,
                            Knockapi::Recipients::PreferenceSetChannelSetting
                          )
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
                      Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Knockapi::Users::BulkSetPreferencesParams::Preferences::Category::Variants
                ]
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
                T::Array[
                  Knockapi::Users::BulkSetPreferencesParams::Preferences::Channel::Variants
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
                  Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject
                )
              end

            class PreferenceSetWorkflowCategorySettingObject < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject,
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
                      T.any(
                        T::Boolean,
                        Knockapi::Recipients::PreferenceSetChannelSetting
                      )
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
                      T.nilable(
                        Knockapi::Recipients::PreferenceSetChannelTypes
                      ),
                    channels:
                      T.nilable(
                        T::Hash[
                          Symbol,
                          T.any(
                            T::Boolean,
                            Knockapi::Recipients::PreferenceSetChannelSetting
                          )
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
                      Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::PreferenceSetWorkflowCategorySettingObject::Channel::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Knockapi::Users::BulkSetPreferencesParams::Preferences::Workflow::Variants
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
end
