# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        # @!attribute chat
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :chat, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::Chat }

        # @!attribute email
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :email, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::Email }

        # @!attribute http
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :http, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::HTTP }

        # @!attribute in_app_feed
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :in_app_feed, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::InAppFeed }

        # @!attribute push
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :push, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::Push }

        # @!attribute sms
        #   Whether the channel type is enabled for the preference set.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :sms, union: -> { Knockapi::Recipients::PreferenceSetChannelTypes::SMS }

        # @!method initialize(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil)
        #   Channel type preferences.
        #
        #   @param chat [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.
        #
        #   @param email [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.
        #
        #   @param http [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.
        #
        #   @param in_app_feed [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.
        #
        #   @param push [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.
        #
        #   @param sms [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting] Whether the channel type is enabled for the preference set.

        # Whether the channel type is enabled for the preference set.
        #
        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#chat
        module Chat
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

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
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

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
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

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
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

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
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

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
          variant -> { Knockapi::Recipients::PreferenceSetChannelTypeSetting }

          # @!method self.variants
          #   @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
        end
      end
    end
  end
end
