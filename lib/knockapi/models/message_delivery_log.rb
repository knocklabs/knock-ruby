# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_delivery_logs
    class MessageDeliveryLog < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute environment_id
      #
      #   @return [String]
      required :environment_id, String

      # @!attribute inserted_at
      #
      #   @return [String]
      required :inserted_at, String

      # @!attribute request
      #   A message delivery log request
      #
      #   @return [Knockapi::Models::MessageDeliveryLog::Request]
      required :request, -> { Knockapi::Models::MessageDeliveryLog::Request }

      # @!attribute response
      #   A message delivery log response
      #
      #   @return [Knockapi::Models::MessageDeliveryLog::Response]
      required :response, -> { Knockapi::Models::MessageDeliveryLog::Response }

      # @!attribute service_name
      #
      #   @return [String]
      required :service_name, String

      # @!parse
      #   # A message delivery log
      #   #
      #   # @param id [String]
      #   # @param _typename [String]
      #   # @param environment_id [String]
      #   # @param inserted_at [String]
      #   # @param request [Knockapi::Models::MessageDeliveryLog::Request]
      #   # @param response [Knockapi::Models::MessageDeliveryLog::Response]
      #   # @param service_name [String]
      #   #
      #   def initialize(id:, _typename:, environment_id:, inserted_at:, request:, response:, service_name:, **) = super

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      # @see Knockapi::Models::MessageDeliveryLog#request
      class Request < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] body
        #
        #   @return [String, Object, nil]
        optional :body, union: -> { Knockapi::Models::MessageDeliveryLog::Request::Body }

        # @!parse
        #   # @return [String, Object]
        #   attr_writer :body

        # @!attribute headers
        #
        #   @return [Object, nil]
        optional :headers, Knockapi::Internal::Type::Unknown, nil?: true

        # @!attribute [r] host
        #
        #   @return [String, nil]
        optional :host, String

        # @!parse
        #   # @return [String]
        #   attr_writer :host

        # @!attribute [r] method_
        #
        #   @return [Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method, nil]
        optional :method_, enum: -> { Knockapi::Models::MessageDeliveryLog::Request::Method }, api_name: :method

        # @!parse
        #   # @return [Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method]
        #   attr_writer :method_

        # @!attribute [r] path
        #
        #   @return [String, nil]
        optional :path, String

        # @!parse
        #   # @return [String]
        #   attr_writer :path

        # @!attribute query
        #
        #   @return [String, nil]
        optional :query, String, nil?: true

        # @!parse
        #   # A message delivery log request
        #   #
        #   # @param body [String, Object]
        #   # @param headers [Object, nil]
        #   # @param host [String]
        #   # @param method_ [Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method]
        #   # @param path [String]
        #   # @param query [String, nil]
        #   #
        #   def initialize(body: nil, headers: nil, host: nil, method_: nil, path: nil, query: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::MessageDeliveryLog::Request#body
        module Body
          extend Knockapi::Internal::Type::Union

          variant String

          variant Knockapi::Internal::Type::Unknown

          # @!parse
          #   # @return [Array(String, Object)]
          #   def self.variants; end
        end

        # @see Knockapi::Models::MessageDeliveryLog::Request#method_
        module Method
          extend Knockapi::Internal::Type::Enum

          GET = :GET
          POST = :POST
          PUT = :PUT
          DELETE = :DELETE
          PATCH = :PATCH

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Knockapi::Models::MessageDeliveryLog#response
      class Response < Knockapi::Internal::Type::BaseModel
        # @!attribute [r] body
        #
        #   @return [String, Object, nil]
        optional :body, union: -> { Knockapi::Models::MessageDeliveryLog::Response::Body }

        # @!parse
        #   # @return [String, Object]
        #   attr_writer :body

        # @!attribute headers
        #
        #   @return [Object, nil]
        optional :headers, Knockapi::Internal::Type::Unknown, nil?: true

        # @!attribute [r] status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :status

        # @!parse
        #   # A message delivery log response
        #   #
        #   # @param body [String, Object]
        #   # @param headers [Object, nil]
        #   # @param status [Integer]
        #   #
        #   def initialize(body: nil, headers: nil, status: nil, **) = super

        # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

        # @see Knockapi::Models::MessageDeliveryLog::Response#body
        module Body
          extend Knockapi::Internal::Type::Union

          variant String

          variant Knockapi::Internal::Type::Unknown

          # @!parse
          #   # @return [Array(String, Object)]
          #   def self.variants; end
        end
      end
    end
  end
end
