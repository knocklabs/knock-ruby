# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::BaseModel
        # @!attribute [r] chat
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :chat, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :chat

        # @!attribute [r] email
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :email, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :email

        # @!attribute [r] http
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :http, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :http

        # @!attribute [r] in_app_feed
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :in_app_feed, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :in_app_feed

        # @!attribute [r] push
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :push, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :push

        # @!attribute [r] sms
        #   A set of settings for a channel type. Currently, this can only be a list of
        #     conditions to apply.
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting, nil]
        optional :sms, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   attr_writer :sms

        # @!parse
        #   # Channel type preferences
        #   #
        #   # @param chat [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   # @param email [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   # @param http [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   # @param in_app_feed [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   # @param push [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   # @param sms [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting]
        #   #
        #   def initialize(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Chat
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Email
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module HTTP
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module InAppFeed
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module Push
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end

        # A set of settings for a channel type. Currently, this can only be a list of
        #   conditions to apply.
        module SMS
          extend Knockapi::Union

          variant Knockapi::BooleanModel

          # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting }

          # @!parse
          #   class << self
          #     # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypeSetting)]
          #     def variants; end
          #   end
        end
      end
    end
  end
end
