# frozen_string_literal: true

module Knockapi
  module Models
    module Channels
      # @see Knockapi::Resources::Channels::Bulk#update_message_status
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!parse
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        module Action
          extend Knockapi::Internal::Type::Enum

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          INTERACTED = :interacted
          ARCHIVE = :archive
          UNARCHIVE = :unarchive
          DELETE = :delete

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
