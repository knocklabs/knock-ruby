# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#update
    class User < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute avatar
      #
      #   @return [String, nil]
      optional :avatar, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute timezone
      #
      #   @return [String, nil]
      optional :timezone, String, nil?: true

      # @!parse
      #   # A user object
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param updated_at [Time]
      #   # @param avatar [String, nil]
      #   # @param created_at [Time, nil]
      #   # @param email [String, nil]
      #   # @param name [String, nil]
      #   # @param phone_number [String, nil]
      #   # @param timezone [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     _typename:,
      #     updated_at:,
      #     avatar: nil,
      #     created_at: nil,
      #     email: nil,
      #     name: nil,
      #     phone_number: nil,
      #     timezone: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
