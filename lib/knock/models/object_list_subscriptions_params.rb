# frozen_string_literal: true

module Knock
  module Models
    class ObjectListSubscriptionsParams < Knock::BaseModel
      # @!parse
      #   extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      # @!attribute collection
      #
      #   @return [String]
      required :collection, String

      # @!attribute [r] after
      #   The cursor to fetch entries after
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] mode
      #   Mode of the request
      #
      #   @return [Symbol, Knock::Models::ObjectListSubscriptionsParams::Mode, nil]
      optional :mode, enum: -> { Knock::Models::ObjectListSubscriptionsParams::Mode }

      # @!parse
      #   # @return [Symbol, Knock::Models::ObjectListSubscriptionsParams::Mode]
      #   attr_writer :mode

      # @!attribute [r] page_size
      #   The page size to fetch
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] recipients
      #   Recipients to filter by (only used if mode is `object`)
      #
      #   @return [Array<String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>, nil]
      optional :recipients,
               -> { Knock::ArrayOf[union: Knock::Models::ObjectListSubscriptionsParams::Recipient] }

      # @!parse
      #   # @return [Array<String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>]
      #   attr_writer :recipients

      # @!parse
      #   # @param collection [String]
      #   # @param after [String]
      #   # @param before [String]
      #   # @param mode [Symbol, Knock::Models::ObjectListSubscriptionsParams::Mode]
      #   # @param page_size [Integer]
      #   # @param recipients [Array<String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference>]
      #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(collection:, after: nil, before: nil, mode: nil, page_size: nil, recipients: nil, request_options: {}, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      # @abstract
      #
      # Mode of the request
      class Mode < Knock::Enum
        RECIPIENT = :recipient
        OBJECT = :object

        finalize!
      end

      # @abstract
      #
      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      class Recipient < Knock::Union
        # A user identifier
        variant String

        # An object reference to a recipient
        variant -> { Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference }

        class ObjectReference < Knock::BaseModel
          # @!attribute id
          #   An object identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute collection
          #   The collection the object belongs to
          #
          #   @return [String]
          required :collection, String

          # @!parse
          #   # An object reference to a recipient
          #   #
          #   # @param id [String]
          #   # @param collection [String]
          #   #
          #   def initialize(id:, collection:, **) = super

          # def initialize: (Hash | Knock::BaseModel) -> void
        end
      end
    end
  end
end
