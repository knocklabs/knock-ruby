# frozen_string_literal: true

module Knockapi
  module Models
    module Users
      # @see Knockapi::Resources::Users::Guides#get_channel
      class GuideGetChannelResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute entries
        #   A list of guides.
        #
        #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry>]
        required :entries,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Entry] }

        # @!attribute guide_group_display_logs
        #   A map of guide group keys to their last display timestamps.
        #
        #   @return [Hash{Symbol=>Time}]
        required :guide_group_display_logs, Knockapi::Internal::Type::HashOf[Time]

        # @!attribute guide_groups
        #   A list of guide groups with their display sequences and intervals.
        #
        #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup>]
        required :guide_groups,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup] }

        # @!attribute ineligible_guides
        #   Markers for guides the user is not eligible to see.
        #
        #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide>]
        required :ineligible_guides,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide] }

        # @!method initialize(entries:, guide_group_display_logs:, guide_groups:, ineligible_guides:)
        #   A response for a list of guides.
        #
        #   @param entries [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry>] A list of guides.
        #
        #   @param guide_group_display_logs [Hash{Symbol=>Time}] A map of guide group keys to their last display timestamps.
        #
        #   @param guide_groups [Array<Knockapi::Models::Users::GuideGetChannelResponse::GuideGroup>] A list of guide groups with their display sequences and intervals.
        #
        #   @param ineligible_guides [Array<Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide>] Markers for guides the user is not eligible to see.

        class Entry < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the guide.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute _typename
          #   The typename of the schema.
          #
          #   @return [String, nil]
          optional :_typename, String, api_name: :__typename

          # @!attribute activation_url_patterns
          #   A list of URL Patterns to evaluate user's current location to activate the
          #   guide, if matched
          #
          #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern>, nil]
          optional :activation_url_patterns,
                   -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern] }

          # @!attribute activation_url_rules
          #   A list of URL rules to evaluate user's current location to activate the guide,
          #   if matched
          #
          #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule>, nil]
          optional :activation_url_rules,
                   -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule] }

          # @!attribute active
          #   Whether the guide is active.
          #
          #   @return [Boolean, nil]
          optional :active, Knockapi::Internal::Type::Boolean

          # @!attribute bypass_global_group_limit
          #
          #   @return [Boolean, nil]
          optional :bypass_global_group_limit, Knockapi::Internal::Type::Boolean

          # @!attribute channel_id
          #
          #   @return [String, nil]
          optional :channel_id, String

          # @!attribute inserted_at
          #
          #   @return [Time, nil]
          optional :inserted_at, Time

          # @!attribute key
          #   The key of the guide.
          #
          #   @return [String, nil]
          optional :key, String

          # @!attribute semver
          #
          #   @return [String, nil]
          optional :semver, String

          # @!attribute steps
          #
          #   @return [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step>, nil]
          optional :steps,
                   -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step] }

          # @!attribute type
          #   The type of the guide.
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, _typename: nil, activation_url_patterns: nil, activation_url_rules: nil, active: nil, bypass_global_group_limit: nil, channel_id: nil, inserted_at: nil, key: nil, semver: nil, steps: nil, type: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Users::GuideGetChannelResponse::Entry} for more details.
          #
          #   @param id [String] The unique identifier for the guide.
          #
          #   @param _typename [String] The typename of the schema.
          #
          #   @param activation_url_patterns [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLPattern>] A list of URL Patterns to evaluate user's current location to activate the guide
          #
          #   @param activation_url_rules [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::ActivationURLRule>] A list of URL rules to evaluate user's current location to activate the guide, i
          #
          #   @param active [Boolean] Whether the guide is active.
          #
          #   @param bypass_global_group_limit [Boolean]
          #
          #   @param channel_id [String]
          #
          #   @param inserted_at [Time]
          #
          #   @param key [String] The key of the guide.
          #
          #   @param semver [String]
          #
          #   @param steps [Array<Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step>]
          #
          #   @param type [String] The type of the guide.
          #
          #   @param updated_at [Time]

          class ActivationURLPattern < Knockapi::Internal::Type::BaseModel
            # @!attribute directive
            #   The directive for the URL pattern ('allow' or 'block')
            #
            #   @return [String, nil]
            optional :directive, String

            # @!attribute pathname
            #   The pathname pattern to match (supports wildcards like /\*)
            #
            #   @return [String, nil]
            optional :pathname, String

            # @!method initialize(directive: nil, pathname: nil)
            #   @param directive [String] The directive for the URL pattern ('allow' or 'block')
            #
            #   @param pathname [String] The pathname pattern to match (supports wildcards like /\*)
          end

          class ActivationURLRule < Knockapi::Internal::Type::BaseModel
            # @!attribute argument
            #   The value to compare against
            #
            #   @return [String, nil]
            optional :argument, String

            # @!attribute directive
            #   The directive for the URL pattern ('allow' or 'block')
            #
            #   @return [String, nil]
            optional :directive, String

            # @!attribute operator
            #   The comparison operator ('contains' or 'equal_to')
            #
            #   @return [String, nil]
            optional :operator, String

            # @!attribute variable
            #   The variable to evaluate ('pathname')
            #
            #   @return [String, nil]
            optional :variable, String

            # @!method initialize(argument: nil, directive: nil, operator: nil, variable: nil)
            #   @param argument [String] The value to compare against
            #
            #   @param directive [String] The directive for the URL pattern ('allow' or 'block')
            #
            #   @param operator [String] The comparison operator ('contains' or 'equal_to')
            #
            #   @param variable [String] The variable to evaluate ('pathname')
          end

          class Step < Knockapi::Internal::Type::BaseModel
            # @!attribute content
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :content, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]

            # @!attribute message
            #
            #   @return [Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message, nil]
            optional :message, -> { Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message }

            # @!attribute ref
            #
            #   @return [String, nil]
            optional :ref, String

            # @!attribute schema_key
            #
            #   @return [String, nil]
            optional :schema_key, String

            # @!attribute schema_semver
            #
            #   @return [String, nil]
            optional :schema_semver, String

            # @!attribute schema_variant_key
            #
            #   @return [String, nil]
            optional :schema_variant_key, String

            # @!method initialize(content: nil, message: nil, ref: nil, schema_key: nil, schema_semver: nil, schema_variant_key: nil)
            #   @param content [Hash{Symbol=>Object}]
            #   @param message [Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step::Message]
            #   @param ref [String]
            #   @param schema_key [String]
            #   @param schema_semver [String]
            #   @param schema_variant_key [String]

            # @see Knockapi::Models::Users::GuideGetChannelResponse::Entry::Step#message
            class Message < Knockapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String, nil]
              optional :id, String, nil?: true

              # @!attribute archived_at
              #
              #   @return [Time, nil]
              optional :archived_at, Time, nil?: true

              # @!attribute interacted_at
              #
              #   @return [Time, nil]
              optional :interacted_at, Time, nil?: true

              # @!attribute link_clicked_at
              #
              #   @return [Time, nil]
              optional :link_clicked_at, Time, nil?: true

              # @!attribute read_at
              #
              #   @return [Time, nil]
              optional :read_at, Time, nil?: true

              # @!attribute seen_at
              #
              #   @return [Time, nil]
              optional :seen_at, Time, nil?: true

              # @!method initialize(id: nil, archived_at: nil, interacted_at: nil, link_clicked_at: nil, read_at: nil, seen_at: nil)
              #   @param id [String, nil]
              #   @param archived_at [Time, nil]
              #   @param interacted_at [Time, nil]
              #   @param link_clicked_at [Time, nil]
              #   @param read_at [Time, nil]
              #   @param seen_at [Time, nil]
            end
          end
        end

        class GuideGroup < Knockapi::Internal::Type::BaseModel
          # @!attribute _typename
          #
          #   @return [String, nil]
          optional :_typename, String, api_name: :__typename

          # @!attribute display_interval
          #
          #   @return [Integer, nil]
          optional :display_interval, Integer

          # @!attribute display_sequence
          #
          #   @return [Array<String>, nil]
          optional :display_sequence, Knockapi::Internal::Type::ArrayOf[String]

          # @!attribute inserted_at
          #
          #   @return [Time, nil]
          optional :inserted_at, Time

          # @!attribute key
          #
          #   @return [String, nil]
          optional :key, String

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(_typename: nil, display_interval: nil, display_sequence: nil, inserted_at: nil, key: nil, updated_at: nil)
          #   @param _typename [String]
          #   @param display_interval [Integer]
          #   @param display_sequence [Array<String>]
          #   @param inserted_at [Time]
          #   @param key [String]
          #   @param updated_at [Time]
        end

        class IneligibleGuide < Knockapi::Internal::Type::BaseModel
          # @!attribute key
          #   The guide's key identifier
          #
          #   @return [String]
          required :key, String

          # @!attribute message
          #   Human-readable explanation of ineligibility
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #   Reason code for ineligibility
          #
          #   @return [Symbol, Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason]
          required :reason, enum: -> { Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason }

          # @!method initialize(key:, message:, reason:)
          #   @param key [String] The guide's key identifier
          #
          #   @param message [String] Human-readable explanation of ineligibility
          #
          #   @param reason [Symbol, Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide::Reason] Reason code for ineligibility

          # Reason code for ineligibility
          #
          # @see Knockapi::Models::Users::GuideGetChannelResponse::IneligibleGuide#reason
          module Reason
            extend Knockapi::Internal::Type::Enum

            GUIDE_NOT_ACTIVE = :guide_not_active
            MARKED_AS_ARCHIVED = :marked_as_archived
            TARGET_CONDITIONS_NOT_MET = :target_conditions_not_met
            NOT_IN_TARGET_AUDIENCE = :not_in_target_audience

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
