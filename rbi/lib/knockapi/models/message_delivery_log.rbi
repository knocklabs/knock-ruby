# typed: strong

module Knockapi
  module Models
    class MessageDeliveryLog < Knockapi::Internal::Type::BaseModel
      # The unique identifier for the message delivery log.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The ID of the environment in which the message delivery occurred.
      sig { returns(String) }
      attr_accessor :environment_id

      # Timestamp when the message delivery log was created.
      sig { returns(String) }
      attr_accessor :inserted_at

      # A message delivery log request.
      sig { returns(Knockapi::Models::MessageDeliveryLog::Request) }
      attr_reader :request

      sig { params(request: T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Internal::AnyHash)).void }
      attr_writer :request

      # A message delivery log response.
      sig { returns(Knockapi::Models::MessageDeliveryLog::Response) }
      attr_reader :response

      sig { params(response: T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Internal::AnyHash)).void }
      attr_writer :response

      # The name of the service that processed the delivery.
      sig { returns(String) }
      attr_accessor :service_name

      # A message delivery log.
      sig do
        params(
          id: String,
          _typename: String,
          environment_id: String,
          inserted_at: String,
          request: T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Internal::AnyHash),
          response: T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Internal::AnyHash),
          service_name: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, environment_id:, inserted_at:, request:, response:, service_name:); end

      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              environment_id: String,
              inserted_at: String,
              request: Knockapi::Models::MessageDeliveryLog::Request,
              response: Knockapi::Models::MessageDeliveryLog::Response,
              service_name: String
            }
          )
      end
      def to_hash; end

      class Request < Knockapi::Internal::Type::BaseModel
        # The body content that was sent with the request.
        sig { returns(T.nilable(T.any(String, T::Hash[Symbol, T.anything]))) }
        attr_reader :body

        sig { params(body: T.any(String, T::Hash[Symbol, T.anything])).void }
        attr_writer :body

        # The headers that were sent with the request.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :headers

        # The host to which the request was sent.
        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        # The HTTP method used for the request.
        sig { returns(T.nilable(Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)) }
        attr_reader :method_

        sig { params(method_: Knockapi::Models::MessageDeliveryLog::Request::Method::OrSymbol).void }
        attr_writer :method_

        # The path of the URL that was requested.
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        # The query string of the URL that was requested.
        sig { returns(T.nilable(String)) }
        attr_accessor :query

        # A message delivery log request.
        sig do
          params(
            body: T.any(String, T::Hash[Symbol, T.anything]),
            headers: T.nilable(T::Hash[Symbol, T.anything]),
            host: String,
            method_: Knockapi::Models::MessageDeliveryLog::Request::Method::OrSymbol,
            path: String,
            query: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, headers: nil, host: nil, method_: nil, path: nil, query: nil); end

        sig do
          override
            .returns(
              {
                body: T.any(String, T::Hash[Symbol, T.anything]),
                headers: T.nilable(T::Hash[Symbol, T.anything]),
                host: String,
                method_: Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol,
                path: String,
                query: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # The body content that was sent with the request.
        module Body
          extend Knockapi::Internal::Type::Union

          sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
          def self.variants; end

          UnionMember1Map =
            T.let(
              Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown],
              Knockapi::Internal::Type::Converter
            )
        end

        # The HTTP method used for the request.
        module Method
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET = T.let(:GET, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          POST = T.let(:POST, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PUT = T.let(:PUT, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          DELETE = T.let(:DELETE, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PATCH = T.let(:PATCH, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol]) }
          def self.values; end
        end
      end

      class Response < Knockapi::Internal::Type::BaseModel
        # The body content that was received with the response.
        sig { returns(T.nilable(T.any(String, T::Hash[Symbol, T.anything]))) }
        attr_reader :body

        sig { params(body: T.any(String, T::Hash[Symbol, T.anything])).void }
        attr_writer :body

        # The headers that were received with the response.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :headers

        # The HTTP status code of the response.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        # A message delivery log response.
        sig do
          params(
            body: T.any(String, T::Hash[Symbol, T.anything]),
            headers: T.nilable(T::Hash[Symbol, T.anything]),
            status: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, headers: nil, status: nil); end

        sig do
          override
            .returns(
              {
                body: T.any(String, T::Hash[Symbol, T.anything]),
                headers: T.nilable(T::Hash[Symbol, T.anything]),
                status: Integer
              }
            )
        end
        def to_hash; end

        # The body content that was received with the response.
        module Body
          extend Knockapi::Internal::Type::Union

          sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
          def self.variants; end

          UnionMember1Map =
            T.let(
              Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown],
              Knockapi::Internal::Type::Converter
            )
        end
      end
    end
  end
end
