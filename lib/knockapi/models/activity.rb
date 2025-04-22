# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_activities
    class Activity < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the activity.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String, nil]
      optional :_typename, String, api_name: :__typename

      # @!attribute actor
      #   A recipient of a notification, which is either a user or an object.
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :actor, union: -> { Knockapi::Models::Recipient }, nil?: true

      # @!attribute data
      #   The workflow trigger `data` payload associated with the activity.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

      # @!attribute inserted_at
      #   Timestamp when the activity was created.
      #
      #   @return [Time, nil]
      optional :inserted_at, Time

      # @!attribute recipient
      #   A recipient of a notification, which is either a user or an object.
      #
      #   @return [Knockapi::Models::User, Knockapi::Models::Object, nil]
      optional :recipient, union: -> { Knockapi::Models::Recipient }

      # @!attribute updated_at
      #   Timestamp when the activity was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, _typename: nil, actor: nil, data: nil, inserted_at: nil, recipient: nil, updated_at: nil)
      #   An activity associated with a workflow trigger request. Messages produced after
      #   a [batch step](/designing-workflows/batch-function) can be associated with one
      #   or more activities. Non-batched messages will always be associated with a single
      #   activity.
      #
      #   @param id [String]
      #   @param _typename [String]
      #   @param actor [Knockapi::Models::User, Knockapi::Models::Object, nil]
      #   @param data [Hash{Symbol=>Object}, nil]
      #   @param inserted_at [Time]
      #   @param recipient [Knockapi::Models::User, Knockapi::Models::Object]
      #   @param updated_at [Time]
    end
  end
end
