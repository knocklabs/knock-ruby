# typed: strong

module Knockapi
  module Models
    module Users
      class GuideGetChannelResponse < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Models::Users::GuideGetChannelResponse,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of guides.
        sig do
          returns(
            T::Array[Knockapi::Models::Users::GuideGetChannelResponse::Entry]
          )
        end
        attr_accessor :entries

        # A map of guide group keys to their last display timestamps.
        sig { returns(T::Hash[Symbol, Time]) }
        attr_accessor :guide_group_display_logs

        # A list of guide groups with their display sequences and intervals.
        sig do
          returns(
            T::Array[
              Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup
            ]
          )
        end
        attr_accessor :guide_groups

        # Markers for guides the user is not eligible to see.
        sig do
          returns(
            T::Array[
              Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide
            ]
          )
        end
        attr_accessor :ineligible_guides

        # A response for a list of guides.
        sig do
          params(
            entries:
              T::Array[
                Knockapi::Models::Users::GuideGetChannelResponse::Entry::OrHash
              ],
            guide_group_display_logs: T::Hash[Symbol, Time],
            guide_groups:
              T::Array[
                Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup::OrHash
              ],
            ineligible_guides:
              T::Array[
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of guides.
          entries:,
          # A map of guide group keys to their last display timestamps.
          guide_group_display_logs:,
          # A list of guide groups with their display sequences and intervals.
          guide_groups:,
          # Markers for guides the user is not eligible to see.
          ineligible_guides:
        )
        end

        sig do
          override.returns(
            {
              entries:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry
                ],
              guide_group_display_logs: T::Hash[Symbol, Time],
              guide_groups:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup
                ],
              ineligible_guides:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide
                ]
            }
          )
        end
        def to_hash
        end

        class Entry < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::GuideGetChannelResponse::Entry,
                Knockapi::Internal::AnyHash
              )
            end

          # The unique identifier for the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The typename of the schema.
          sig { returns(T.nilable(String)) }
          attr_reader :_typename

          sig { params(_typename: String).void }
          attr_writer :_typename

          # A list of URL Patterns to evaluate user's current location to activate the
          # guide, if matched
          sig do
            returns(
              T.nilable(
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern
                ]
              )
            )
          end
          attr_reader :activation_url_patterns

          sig do
            params(
              activation_url_patterns:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern::OrHash
                ]
            ).void
          end
          attr_writer :activation_url_patterns

          # A list of URL rules to evaluate user's current location to activate the guide,
          # if matched
          sig do
            returns(
              T.nilable(
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule
                ]
              )
            )
          end
          attr_reader :activation_url_rules

          sig do
            params(
              activation_url_rules:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule::OrHash
                ]
            ).void
          end
          attr_writer :activation_url_rules

          # Whether the guide is active.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :active

          sig { params(active: T::Boolean).void }
          attr_writer :active

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :bypass_global_group_limit

          sig { params(bypass_global_group_limit: T::Boolean).void }
          attr_writer :bypass_global_group_limit

          sig { returns(T.nilable(String)) }
          attr_reader :channel_id

          sig { params(channel_id: String).void }
          attr_writer :channel_id

          sig { returns(T.nilable(Time)) }
          attr_reader :inserted_at

          sig { params(inserted_at: Time).void }
          attr_writer :inserted_at

          # The key of the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :key

          sig { params(key: String).void }
          attr_writer :key

          sig { returns(T.nilable(String)) }
          attr_reader :semver

          sig { params(semver: String).void }
          attr_writer :semver

          sig do
            returns(
              T.nilable(
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step
                ]
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::OrHash
                ]
            ).void
          end
          attr_writer :steps

          # The type of the guide.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              _typename: String,
              activation_url_patterns:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern::OrHash
                ],
              activation_url_rules:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule::OrHash
                ],
              active: T::Boolean,
              bypass_global_group_limit: T::Boolean,
              channel_id: String,
              inserted_at: Time,
              key: String,
              semver: String,
              steps:
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::OrHash
                ],
              type: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the guide.
            id: nil,
            # The typename of the schema.
            _typename: nil,
            # A list of URL Patterns to evaluate user's current location to activate the
            # guide, if matched
            activation_url_patterns: nil,
            # A list of URL rules to evaluate user's current location to activate the guide,
            # if matched
            activation_url_rules: nil,
            # Whether the guide is active.
            active: nil,
            bypass_global_group_limit: nil,
            channel_id: nil,
            inserted_at: nil,
            # The key of the guide.
            key: nil,
            semver: nil,
            steps: nil,
            # The type of the guide.
            type: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                _typename: String,
                activation_url_patterns:
                  T::Array[
                    Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern
                  ],
                activation_url_rules:
                  T::Array[
                    Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule
                  ],
                active: T::Boolean,
                bypass_global_group_limit: T::Boolean,
                channel_id: String,
                inserted_at: Time,
                key: String,
                semver: String,
                steps:
                  T::Array[
                    Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step
                  ],
                type: String,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          class ActivationURLPattern < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern,
                  Knockapi::Internal::AnyHash
                )
              end

            # The directive for the URL pattern ('allow' or 'block')
            sig { returns(T.nilable(String)) }
            attr_reader :directive

            sig { params(directive: String).void }
            attr_writer :directive

            # The pathname pattern to match (supports wildcards like /\*)
            sig { returns(T.nilable(String)) }
            attr_reader :pathname

            sig { params(pathname: String).void }
            attr_writer :pathname

            sig do
              params(directive: String, pathname: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # The directive for the URL pattern ('allow' or 'block')
              directive: nil,
              # The pathname pattern to match (supports wildcards like /\*)
              pathname: nil
            )
            end

            sig { override.returns({ directive: String, pathname: String }) }
            def to_hash
            end
          end

          class ActivationURLRule < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule,
                  Knockapi::Internal::AnyHash
                )
              end

            # The value to compare against
            sig { returns(T.nilable(String)) }
            attr_reader :argument

            sig { params(argument: String).void }
            attr_writer :argument

            # The directive for the URL pattern ('allow' or 'block')
            sig { returns(T.nilable(String)) }
            attr_reader :directive

            sig { params(directive: String).void }
            attr_writer :directive

            # The comparison operator ('contains' or 'equal_to')
            sig { returns(T.nilable(String)) }
            attr_reader :operator

            sig { params(operator: String).void }
            attr_writer :operator

            # The variable to evaluate ('pathname')
            sig { returns(T.nilable(String)) }
            attr_reader :variable

            sig { params(variable: String).void }
            attr_writer :variable

            sig do
              params(
                argument: String,
                directive: String,
                operator: String,
                variable: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The value to compare against
              argument: nil,
              # The directive for the URL pattern ('allow' or 'block')
              directive: nil,
              # The comparison operator ('contains' or 'equal_to')
              operator: nil,
              # The variable to evaluate ('pathname')
              variable: nil
            )
            end

            sig do
              override.returns(
                {
                  argument: String,
                  directive: String,
                  operator: String,
                  variable: String
                }
              )
            end
            def to_hash
            end
          end

          class Step < Knockapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step,
                  Knockapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :content

            sig { params(content: T::Hash[Symbol, T.anything]).void }
            attr_writer :content

            sig do
              returns(
                T.nilable(
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message
                )
              )
            end
            attr_reader :message

            sig do
              params(
                message:
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message::OrHash
              ).void
            end
            attr_writer :message

            sig { returns(T.nilable(String)) }
            attr_reader :ref

            sig { params(ref: String).void }
            attr_writer :ref

            sig { returns(T.nilable(String)) }
            attr_reader :schema_key

            sig { params(schema_key: String).void }
            attr_writer :schema_key

            sig { returns(T.nilable(String)) }
            attr_reader :schema_semver

            sig { params(schema_semver: String).void }
            attr_writer :schema_semver

            sig { returns(T.nilable(String)) }
            attr_reader :schema_variant_key

            sig { params(schema_variant_key: String).void }
            attr_writer :schema_variant_key

            sig do
              params(
                content: T::Hash[Symbol, T.anything],
                message:
                  Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message::OrHash,
                ref: String,
                schema_key: String,
                schema_semver: String,
                schema_variant_key: String
              ).returns(T.attached_class)
            end
            def self.new(
              content: nil,
              message: nil,
              ref: nil,
              schema_key: nil,
              schema_semver: nil,
              schema_variant_key: nil
            )
            end

            sig do
              override.returns(
                {
                  content: T::Hash[Symbol, T.anything],
                  message:
                    Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message,
                  ref: String,
                  schema_key: String,
                  schema_semver: String,
                  schema_variant_key: String
                }
              )
            end
            def to_hash
            end

            class Message < Knockapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message,
                    Knockapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :archived_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :interacted_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :link_clicked_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :read_at

              sig { returns(T.nilable(Time)) }
              attr_accessor :seen_at

              sig do
                params(
                  id: T.nilable(String),
                  archived_at: T.nilable(Time),
                  interacted_at: T.nilable(Time),
                  link_clicked_at: T.nilable(Time),
                  read_at: T.nilable(Time),
                  seen_at: T.nilable(Time)
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                archived_at: nil,
                interacted_at: nil,
                link_clicked_at: nil,
                read_at: nil,
                seen_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: T.nilable(String),
                    archived_at: T.nilable(Time),
                    interacted_at: T.nilable(Time),
                    link_clicked_at: T.nilable(Time),
                    read_at: T.nilable(Time),
                    seen_at: T.nilable(Time)
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class GuideGroup < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup,
                Knockapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :_typename

          sig { params(_typename: String).void }
          attr_writer :_typename

          sig { returns(T.nilable(Integer)) }
          attr_reader :display_interval

          sig { params(display_interval: Integer).void }
          attr_writer :display_interval

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :display_sequence

          sig { params(display_sequence: T::Array[String]).void }
          attr_writer :display_sequence

          sig { returns(T.nilable(Time)) }
          attr_reader :inserted_at

          sig { params(inserted_at: Time).void }
          attr_writer :inserted_at

          sig { returns(T.nilable(String)) }
          attr_reader :key

          sig { params(key: String).void }
          attr_writer :key

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              _typename: String,
              display_interval: Integer,
              display_sequence: T::Array[String],
              inserted_at: Time,
              key: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            _typename: nil,
            display_interval: nil,
            display_sequence: nil,
            inserted_at: nil,
            key: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                _typename: String,
                display_interval: Integer,
                display_sequence: T::Array[String],
                inserted_at: Time,
                key: String,
                updated_at: Time
              }
            )
          end
          def to_hash
          end
        end

        class IneligibleGuide < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide,
                Knockapi::Internal::AnyHash
              )
            end

          # The guide's key identifier
          sig { returns(String) }
          attr_accessor :key

          # Human-readable explanation of ineligibility
          sig { returns(String) }
          attr_accessor :message

          # Reason code for ineligibility
          sig do
            returns(
              Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig do
            params(
              key: String,
              message: String,
              reason:
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The guide's key identifier
            key:,
            # Human-readable explanation of ineligibility
            message:,
            # Reason code for ineligibility
            reason:
          )
          end

          sig do
            override.returns(
              {
                key: String,
                message: String,
                reason:
                  Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Reason code for ineligibility
          module Reason
            extend Knockapi::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GUIDE_NOT_ACTIVE =
              T.let(
                :guide_not_active,
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
              )
            MARKED_AS_ARCHIVED =
              T.let(
                :marked_as_archived,
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
              )
            TARGET_CONDITIONS_NOT_MET =
              T.let(
                :target_conditions_not_met,
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
              )
            NOT_IN_TARGET_AUDIENCE =
              T.let(
                :not_in_target_audience,
                Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason::TaggedSymbol
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
