# frozen_string_literal: true

module Knock
  module Models
    class PreferenceSetChannelTypes < Knock::BaseModel
      # @!attribute [r] chat
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :chat, union: -> { Knock::Models::PreferenceSetChannelTypes::Chat }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :chat

      # @!attribute [r] email
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :email, union: -> { Knock::Models::PreferenceSetChannelTypes::Email }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :email

      # @!attribute [r] http
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :http, union: -> { Knock::Models::PreferenceSetChannelTypes::HTTP }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :http

      # @!attribute [r] in_app_feed
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :in_app_feed, union: -> { Knock::Models::PreferenceSetChannelTypes::InAppFeed }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :in_app_feed

      # @!attribute [r] push
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :push, union: -> { Knock::Models::PreferenceSetChannelTypes::Push }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :push

      # @!attribute [r] sms
      #   A set of settings for a channel type. Currently, this can only be a list of
      #     conditions to apply.
      #
      #   @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting, nil]
      optional :sms, union: -> { Knock::Models::PreferenceSetChannelTypes::SMS }

      # @!parse
      #   # @return [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   attr_writer :sms

      # @!parse
      #   # Channel type preferences
      #   #
      #   # @param chat [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   # @param email [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   # @param http [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   # @param in_app_feed [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   # @param push [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   # @param sms [Boolean, Knock::Models::PreferenceSetChannelTypeSetting]
      #   #
      #   def initialize(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class Chat < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class Email < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class HTTP < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class InAppFeed < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class Push < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end

      # @abstract
      #
      # A set of settings for a channel type. Currently, this can only be a list of
      #   conditions to apply.
      class SMS < Knock::Union
        variant Knock::BooleanModel

        # A set of settings for a channel type. Currently, this can only be a list of conditions to apply.
        variant -> { Knock::Models::PreferenceSetChannelTypeSetting }
      end
    end
  end
end
