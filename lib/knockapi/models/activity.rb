# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_activities
    class Activity < Knockapi::Internal::Type::BaseModel
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] _typename
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!parse
      #   # @return [String]
      #   attr_writer :_typename

      # @!attribute actor
      #   A recipient, which is either a user or an object
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :actor, union: -> { Knockapi::Models::Recipient }, nil?: true

      # @!attribute data
      #   The data associated with the activity
      #
      #   @return [Object, nil]
      optional :data, Knockapi::Internal::Type::Unknown, nil?: true

      # @!attribute [r] inserted_at
      #
      #   @return [Time, nil]
      optional :inserted_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :inserted_at

      # @!attribute [r] recipient
      #   A recipient, which is either a user or an object
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :recipient, union: -> { Knockapi::Models::Recipient }

      # @!parse
      #   # @return [Knockapi::Models::User, Knockapi::Models::Object]
      #   attr_writer :recipient

      # @!attribute [r] updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated_at

      # @!parse
      #   # An activity associated with a workflow run
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param actor [Knockapi::Models::User, Knockapi::Models::Object, nil]
      #   # @param data [Object, nil]
      #   # @param inserted_at [Time]
      #   # @param recipient [Knockapi::Models::User, Knockapi::Models::Object]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(id: nil, _typename: nil, actor: nil, data: nil, inserted_at: nil, recipient: nil, updated_at: nil, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void
    end
  end
end
