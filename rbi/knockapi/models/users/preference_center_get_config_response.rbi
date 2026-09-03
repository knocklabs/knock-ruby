# typed: strong

module Knockapi
  module Models
    module Users
      class PreferenceCenterGetConfigResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::PreferenceCenterGetConfigResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # The name of the account that the preference center is associated with.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_name

        # The branding for the preference center, sourced from public environment
        # variables.
        sig do
          returns(
            Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding
          )
        end
        attr_reader :branding

        sig do
          params(
            branding:
              Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding::OrHash
          ).void
        end
        attr_writer :branding

        # The preference center configuration data containing the rows to display.
        sig do
          returns(
            Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config
          )
        end
        attr_reader :config

        sig do
          params(
            config:
              Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::OrHash
          ).void
        end
        attr_writer :config

        # Whether the preference center is enabled for this environment.
        sig { returns(T::Boolean) }
        attr_accessor :enabled

        # A display label for the user that the preference center is associated with,
        # resolved as email, then user id.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_email

        # Whether Knock branding is required in the preference center.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :knock_branding_required

        sig { params(knock_branding_required: T::Boolean).void }
        attr_writer :knock_branding_required

        # The preference center configuration for an environment. Controls whether the
        # preference center is enabled and defines the rows displayed in the UI.
        sig do
          params(
            account_name: T.nilable(String),
            branding:
              Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding::OrHash,
            config:
              Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::OrHash,
            enabled: T::Boolean,
            user_email: T.nilable(String),
            knock_branding_required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the account that the preference center is associated with.
          account_name:,
          # The branding for the preference center, sourced from public environment
          # variables.
          branding:,
          # The preference center configuration data containing the rows to display.
          config:,
          # Whether the preference center is enabled for this environment.
          enabled:,
          # A display label for the user that the preference center is associated with,
          # resolved as email, then user id.
          user_email:,
          # Whether Knock branding is required in the preference center.
          knock_branding_required: nil
        )
        end

        sig do
          override.returns(
            {
              account_name: T.nilable(String),
              branding:
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding,
              config:
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config,
              enabled: T::Boolean,
              user_email: T.nilable(String),
              knock_branding_required: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Branding < Knockapi::Models::Users::PreferenceCenterBrandingConfig
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding,
                Knockapi::Internal::AnyHash
              )
            end

          # The branding for the preference center, sourced from public environment
          # variables.
          sig do
            returns(T.nilable(Knockapi::Users::PreferenceCenterBrandingConfig))
          end
          attr_reader :dark

          sig do
            params(
              dark: Knockapi::Users::PreferenceCenterBrandingConfig::OrHash
            ).void
          end
          attr_writer :dark

          # The branding for the preference center, sourced from public environment
          # variables.
          sig do
            params(
              dark: Knockapi::Users::PreferenceCenterBrandingConfig::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The branding for the preference center, sourced from public environment
            # variables.
            dark: nil
          )
          end

          sig do
            override.returns(
              { dark: Knockapi::Users::PreferenceCenterBrandingConfig }
            )
          end
          def to_hash
          end
        end

        class Config < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config,
                Knockapi::Internal::AnyHash
              )
            end

          # The body text displayed below the title.
          sig { returns(String) }
          attr_accessor :body

          # An ordered list of rows to display in the preference center.
          sig do
            returns(
              T::Array[
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row
              ]
            )
          end
          attr_accessor :rows

          # The title displayed at the top of the preference center.
          sig { returns(String) }
          attr_accessor :title

          # Whether the account name should be displayed in the preference center.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_account_name

          sig { params(show_account_name: T::Boolean).void }
          attr_writer :show_account_name

          # The preference center configuration data containing the rows to display.
          sig do
            params(
              body: String,
              rows:
                T::Array[
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::OrHash
                ],
              title: String,
              show_account_name: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # The body text displayed below the title.
            body:,
            # An ordered list of rows to display in the preference center.
            rows:,
            # The title displayed at the top of the preference center.
            title:,
            # Whether the account name should be displayed in the preference center.
            show_account_name: nil
          )
          end

          sig do
            override.returns(
              {
                body: String,
                rows:
                  T::Array[
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row
                  ],
                title: String,
                show_account_name: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Row < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row,
                  Knockapi::Internal::AnyHash
                )
              end

            # The display name of the preference row.
            sig { returns(String) }
            attr_accessor :name

            # The type of this preference row. `workflow` targets a workflow, `channel`
            # targets a specific channel, `category` targets a workflow category,
            # `channel_types` controls per-channel-type opt-in/out, and
            # `commercial_subscribed` is the commercial notification toggle.
            sig do
              returns(
                Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            # The list of channel types this preference is scoped to. An empty list (or
            # `null`) means the preference applies to all channel types. Present for
            # `workflow`, `category`, and `channel_types` types.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                  ]
                )
              )
            end
            attr_accessor :channel_types

            # A description shown below the preference row name.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # The category name, workflow key, or channel ID this row controls (e.g.
            # `marketing`, `new-project-mentions`, or a channel UUID). Present for `workflow`,
            # `channel`, and `category` types.
            sig { returns(T.nilable(String)) }
            attr_accessor :identifier

            # A preference row in the preference center configuration.
            sig do
              params(
                name: String,
                type:
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::OrSymbol,
                channel_types:
                  T.nilable(
                    T::Array[
                      Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::OrSymbol
                    ]
                  ),
                description: String,
                identifier: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The display name of the preference row.
              name:,
              # The type of this preference row. `workflow` targets a workflow, `channel`
              # targets a specific channel, `category` targets a workflow category,
              # `channel_types` controls per-channel-type opt-in/out, and
              # `commercial_subscribed` is the commercial notification toggle.
              type:,
              # The list of channel types this preference is scoped to. An empty list (or
              # `null`) means the preference applies to all channel types. Present for
              # `workflow`, `category`, and `channel_types` types.
              channel_types: nil,
              # A description shown below the preference row name.
              description: nil,
              # The category name, workflow key, or channel ID this row controls (e.g.
              # `marketing`, `new-project-mentions`, or a channel UUID). Present for `workflow`,
              # `channel`, and `category` types.
              identifier: nil
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  type:
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol,
                  channel_types:
                    T.nilable(
                      T::Array[
                        Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                      ]
                    ),
                  description: String,
                  identifier: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # The type of this preference row. `workflow` targets a workflow, `channel`
            # targets a specific channel, `category` targets a workflow category,
            # `channel_types` controls per-channel-type opt-in/out, and
            # `commercial_subscribed` is the commercial notification toggle.
            module Type
              extend Knockapi::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WORKFLOW =
                T.let(
                  :workflow,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                )
              CHANNEL =
                T.let(
                  :channel,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                )
              CATEGORY =
                T.let(
                  :category,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                )
              CHANNEL_TYPES =
                T.let(
                  :channel_types,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                )
              COMMERCIAL_SUBSCRIBED =
                T.let(
                  :commercial_subscribed,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module ChannelType
              extend Knockapi::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              IN_APP =
                T.let(
                  :in_app,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              IN_APP_FEED =
                T.let(
                  :in_app_feed,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              IN_APP_GUIDE =
                T.let(
                  :in_app_guide,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              SMS =
                T.let(
                  :sms,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              PUSH =
                T.let(
                  :push,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              CHAT =
                T.let(
                  :chat,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              HTTP =
                T.let(
                  :http,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              LOG =
                T.let(
                  :log,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )
              DEFERRED_LOG =
                T.let(
                  :deferred_log,
                  Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config::Row::ChannelType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
