# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] chat
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :chat, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :chat

        # @!attribute [r] email
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :email, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :email

        # @!attribute [r] http
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :http, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :http

        # @!attribute [r] in_app_feed
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :in_app_feed, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :in_app_feed

        # @!attribute [r] push
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :push, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :push

        # @!attribute [r] sms
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :sms, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :sms

        # @!method initialize(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil)
        #   Channel type preferences.
        #
        #   @param chat [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   @param email [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   @param http [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   @param in_app_feed [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   @param push [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   @param sms [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#chat
        module Chat
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#email
        module Email
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#http
        module HTTP
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#in_app_feed
        module InAppFeed
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#push
        module Push
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#sms
        module SMS
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end
      end
    end
  end
end
