# frozen_string_literal: true

module Knock
  module Models
    class Activity < Knock::BaseModel
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
      #   @return [Knock::Models::User, Knock::Models::Object, nil]
      optional :actor, union: -> { Knock::Models::Recipient }, nil?: true

      # @!attribute data
      #   The data associated with the activity
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Knock::HashOf[Knock::Unknown], nil?: true

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
      #   @return [Knock::Models::User, Knock::Models::Object, nil]
      optional :recipient, union: -> { Knock::Models::Recipient }

      # @!parse
      #   # @return [Knock::Models::User, Knock::Models::Object]
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
      #   # @param actor [Knock::Models::User, Knock::Models::Object, nil]
      #   # @param data [Hash{Symbol=>Object}, nil]
      #   # @param inserted_at [Time]
      #   # @param recipient [Knock::Models::User, Knock::Models::Object]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(id: nil, _typename: nil, actor: nil, data: nil, inserted_at: nil, recipient: nil, updated_at: nil, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
