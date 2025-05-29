# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list_delivery_logs
    class MessageDeliveryLog < Knockapi::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the message delivery log.
      #
      #   @return [String]
      required :id, String

      # @!attribute _typename
      #   The typename of the schema.
      #
      #   @return [String]
      required :_typename, String, api_name: :__typename

      # @!attribute environment_id
      #   The ID of the environment in which the message delivery occurred.
      #
      #   @return [String]
      required :environment_id, String

      # @!attribute inserted_at
      #   Timestamp when the message delivery log was created.
      #
      #   @return [String]
      required :inserted_at, String

      # @!attribute request
      #   A message delivery log request.
      #
      #   @return [Knockapi::Models::MessageDeliveryLog::Request]
      required :request, -> { Knockapi::MessageDeliveryLog::Request }

      # @!attribute response
      #   A message delivery log response.
      #
      #   @return [Knockapi::Models::MessageDeliveryLog::Response]
      required :response, -> { Knockapi::MessageDeliveryLog::Response }

      # @!attribute service_name
      #   The name of the service that processed the delivery.
      #
      #   @return [String]
      required :service_name, String

      # @!method initialize(id:, _typename:, environment_id:, inserted_at:, request:, response:, service_name:)
      #   A message delivery log contains a `request` from Knock to a downstream provider
      #   and the `response` that was returned.
      #
      #   @param id [String] The unique identifier for the message delivery log.
      #
      #   @param _typename [String] The typename of the schema.
      #
      #   @param environment_id [String] The ID of the environment in which the message delivery occurred.
      #
      #   @param inserted_at [String] Timestamp when the message delivery log was created.
      #
      #   @param request [Knockapi::Models::MessageDeliveryLog::Request] A message delivery log request.
      #
      #   @param response [Knockapi::Models::MessageDeliveryLog::Response] A message delivery log response.
      #
      #   @param service_name [String] The name of the service that processed the delivery.

      # @see Knockapi::Models::MessageDeliveryLog#request
      class Request < Knockapi::Internal::Type::BaseModel
        # @!attribute body
        #   The body content that was sent with the request.
        #
        #   @return [String, Hash{Symbol=>Object}, nil]
        optional :body, union: -> { Knockapi::MessageDeliveryLog::Request::Body }

        # @!attribute headers
        #   The headers that were sent with the request.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :headers, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!attribute host
        #   The host to which the request was sent.
        #
        #   @return [String, nil]
        optional :host, String

        # @!attribute method_
        #   The HTTP method used for the request.
        #
        #   @return [Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method, nil]
        optional :method_, enum: -> { Knockapi::MessageDeliveryLog::Request::Method }, api_name: :method

        # @!attribute path
        #   The path of the URL that was requested.
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute query
        #   The query string of the URL that was requested.
        #
        #   @return [String, nil]
        optional :query, String, nil?: true

        # @!method initialize(body: nil, headers: nil, host: nil, method_: nil, path: nil, query: nil)
        #   A message delivery log request.
        #
        #   @param body [String, Hash{Symbol=>Object}] The body content that was sent with the request.
        #
        #   @param headers [Hash{Symbol=>Object}, nil] The headers that were sent with the request.
        #
        #   @param host [String] The host to which the request was sent.
        #
        #   @param method_ [Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method] The HTTP method used for the request.
        #
        #   @param path [String] The path of the URL that was requested.
        #
        #   @param query [String, nil] The query string of the URL that was requested.

        # The body content that was sent with the request.
        #
        # @see Knockapi::Models::MessageDeliveryLog::Request#body
        module Body
          extend Knockapi::Internal::Type::Union

          variant String

          variant -> { Knockapi::Models::MessageDeliveryLog::Request::Body::UnionMember1Map }

          # @!method self.variants
          #   @return [Array(String, Hash{Symbol=>Object})]

          # @type [Knockapi::Internal::Type::Converter]
          UnionMember1Map = Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]
        end

        # The HTTP method used for the request.
        #
        # @see Knockapi::Models::MessageDeliveryLog::Request#method_
        module Method
          extend Knockapi::Internal::Type::Enum

          GET = :GET
          POST = :POST
          PUT = :PUT
          DELETE = :DELETE
          PATCH = :PATCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Knockapi::Models::MessageDeliveryLog#response
      class Response < Knockapi::Internal::Type::BaseModel
        # @!attribute body
        #   The body content that was received with the response.
        #
        #   @return [String, Hash{Symbol=>Object}, nil]
        optional :body, union: -> { Knockapi::MessageDeliveryLog::Response::Body }

        # @!attribute headers
        #   The headers that were received with the response.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :headers, Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown], nil?: true

        # @!attribute status
        #   The HTTP status code of the response.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(body: nil, headers: nil, status: nil)
        #   A message delivery log response.
        #
        #   @param body [String, Hash{Symbol=>Object}] The body content that was received with the response.
        #
        #   @param headers [Hash{Symbol=>Object}, nil] The headers that were received with the response.
        #
        #   @param status [Integer] The HTTP status code of the response.

        # The body content that was received with the response.
        #
        # @see Knockapi::Models::MessageDeliveryLog::Response#body
        module Body
          extend Knockapi::Internal::Type::Union

          variant String

          variant -> { Knockapi::Models::MessageDeliveryLog::Response::Body::UnionMember1Map }

          # @!method self.variants
          #   @return [Array(String, Hash{Symbol=>Object})]

          # @type [Knockapi::Internal::Type::Converter]
          UnionMember1Map = Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]
        end
      end
    end
  end
end
