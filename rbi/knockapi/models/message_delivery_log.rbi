# typed: strong

module Knockapi
  module Models
    class MessageDeliveryLog < Knockapi::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
      sig { returns(Knockapi::MessageDeliveryLog::Request) }
      attr_reader :request

      sig do
        params(request: Knockapi::MessageDeliveryLog::Request::OrHash).void
      end
      attr_writer :request

      # A message delivery log response.
      sig { returns(Knockapi::MessageDeliveryLog::Response) }
      attr_reader :response

      sig do
        params(response: Knockapi::MessageDeliveryLog::Response::OrHash).void
      end
      attr_writer :response

      # The name of the service that processed the delivery.
      sig { returns(String) }
      attr_accessor :service_name

      # A message delivery log contains a `request` from Knock to a downstream provider
      # and the `response` that was returned.
      sig do
        params(
          id: String,
          _typename: String,
          environment_id: String,
          inserted_at: String,
          request: Knockapi::MessageDeliveryLog::Request::OrHash,
          response: Knockapi::MessageDeliveryLog::Response::OrHash,
          service_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the message delivery log.
        id:,
        # The typename of the schema.
        _typename:,
        # The ID of the environment in which the message delivery occurred.
        environment_id:,
        # Timestamp when the message delivery log was created.
        inserted_at:,
        # A message delivery log request.
        request:,
        # A message delivery log response.
        response:,
        # The name of the service that processed the delivery.
        service_name:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            _typename: String,
            environment_id: String,
            inserted_at: String,
            request: Knockapi::MessageDeliveryLog::Request,
            response: Knockapi::MessageDeliveryLog::Response,
            service_name: String
          }
        )
      end
      def to_hash
      end

      class Request < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
        sig do
          returns(
            T.nilable(
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )
          )
        end
        attr_reader :method_

        sig do
          params(
            method_: Knockapi::MessageDeliveryLog::Request::Method::OrSymbol
          ).void
        end
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
            method_: Knockapi::MessageDeliveryLog::Request::Method::OrSymbol,
            path: String,
            query: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The body content that was sent with the request.
          body: nil,
          # The headers that were sent with the request.
          headers: nil,
          # The host to which the request was sent.
          host: nil,
          # The HTTP method used for the request.
          method_: nil,
          # The path of the URL that was requested.
          path: nil,
          # The query string of the URL that was requested.
          query: nil
        )
        end

        sig do
          override.returns(
            {
              body: T.any(String, T::Hash[Symbol, T.anything]),
              headers: T.nilable(T::Hash[Symbol, T.anything]),
              host: String,
              method_:
                Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol,
              path: String,
              query: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The body content that was sent with the request.
        module Body
          extend Knockapi::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Hash[Symbol, T.anything]) }

          sig do
            override.returns(
              T::Array[Knockapi::MessageDeliveryLog::Request::Body::Variants]
            )
          end
          def self.variants
          end

          UnionMember1Map =
            T.let(
              Knockapi::Internal::Type::HashOf[
                Knockapi::Internal::Type::Unknown
              ],
              Knockapi::Internal::Type::Converter
            )
        end

        # The HTTP method used for the request.
        module Method
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Knockapi::MessageDeliveryLog::Request::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(
              :GET,
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )
          POST =
            T.let(
              :POST,
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )
          PUT =
            T.let(
              :PUT,
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )
          PATCH =
            T.let(
              :PATCH,
              Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::MessageDeliveryLog::Request::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Response < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
          ).returns(T.attached_class)
        end
        def self.new(
          # The body content that was received with the response.
          body: nil,
          # The headers that were received with the response.
          headers: nil,
          # The HTTP status code of the response.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              body: T.any(String, T::Hash[Symbol, T.anything]),
              headers: T.nilable(T::Hash[Symbol, T.anything]),
              status: Integer
            }
          )
        end
        def to_hash
        end

        # The body content that was received with the response.
        module Body
          extend Knockapi::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Hash[Symbol, T.anything]) }

          sig do
            override.returns(
              T::Array[Knockapi::MessageDeliveryLog::Response::Body::Variants]
            )
          end
          def self.variants
          end

          UnionMember1Map =
            T.let(
              Knockapi::Internal::Type::HashOf[
                Knockapi::Internal::Type::Unknown
              ],
              Knockapi::Internal::Type::Converter
            )
        end
      end
    end
  end
end
