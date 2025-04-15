# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PreferenceSetChannelTypes < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] chat
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions, nil]
        optional :chat, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions]
        #   attr_writer :chat

        # @!attribute [r] email
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions, nil]
        optional :email, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions]
        #   attr_writer :email

        # @!attribute [r] http
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions, nil]
        optional :http, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions]
        #   attr_writer :http

        # @!attribute [r] in_app_feed
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions, nil]
        optional :in_app_feed, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions]
        #   attr_writer :in_app_feed

        # @!attribute [r] push
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions, nil]
        optional :push, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions]
        #   attr_writer :push

        # @!attribute [r] sms
        #
        #   @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions, nil]
        optional :sms, union: -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS }

        # @!parse
        #   # @return [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions]
        #   attr_writer :sms

        # @!parse
        #   # Channel type preferences
        #   #
        #   # @param chat [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions]
        #   # @param email [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions]
        #   # @param http [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions]
        #   # @param in_app_feed [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions]
        #   # @param push [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions]
        #   # @param sms [Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions]
        #   #
        #   def initialize(chat: nil, email: nil, http: nil, in_app_feed: nil, push: nil, sms: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#chat
        module Chat
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Chat::Conditions)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#email
        module Email
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Email::Conditions)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#http
        module HTTP
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::HTTP::Conditions)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#in_app_feed
        module InAppFeed
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::InAppFeed::Conditions)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#push
        module Push
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::Push::Conditions)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::Recipients::PreferenceSetChannelTypes#sms
        module SMS
          extend Knockapi::Internal::Type::Union

          variant Knockapi::Internal::Type::Boolean

          variant -> { Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions }

          class Conditions < Knockapi::Internal::Type::BaseModel
            # @!attribute conditions
            #
            #   @return [Array<Knockapi::Models::Condition>]
            required :conditions, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Condition] }

            # @!parse
            #   # @param conditions [Array<Knockapi::Models::Condition>]
            #   #
            #   def initialize(conditions:, **) = super

            # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
          end

          # @!parse
          #   # @return [Array(Boolean, Knockapi::Models::Recipients::PreferenceSetChannelTypes::SMS::Conditions)]
          #   def self.variants; end
        end
      end
    end
  end
end
