# typed: strong

module Knockapi
  module Models
    class MessageDeliveryLog < Knockapi::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(String) }
      attr_accessor :environment_id

      sig { returns(String) }
      attr_accessor :inserted_at

      # A message delivery log request
      sig { returns(Knockapi::Models::MessageDeliveryLog::Request) }
      attr_reader :request

      sig { params(request: T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Util::AnyHash)).void }
      attr_writer :request

      # A message delivery log response
      sig { returns(Knockapi::Models::MessageDeliveryLog::Response) }
      attr_reader :response

      sig { params(response: T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Util::AnyHash)).void }
      attr_writer :response

      sig { returns(String) }
      attr_accessor :service_name

      # A message delivery log
      sig do
        params(
          id: String,
          _typename: String,
          environment_id: String,
          inserted_at: String,
          request: T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Util::AnyHash),
          response: T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Util::AnyHash),
          service_name: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, _typename:, environment_id:, inserted_at:, request:, response:, service_name:)
      end

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
      def to_hash
      end

      class Request < Knockapi::BaseModel
        sig { returns(T.nilable(T.any(String, T::Hash[Symbol, T.anything]))) }
        attr_reader :body

        sig { params(body: T.any(String, T::Hash[Symbol, T.anything])).void }
        attr_writer :body

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :headers

        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        sig { returns(T.nilable(Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)) }
        attr_reader :method_

        sig { params(method_: Knockapi::Models::MessageDeliveryLog::Request::Method::OrSymbol).void }
        attr_writer :method_

        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        sig { returns(T.nilable(String)) }
        attr_accessor :query

        # A message delivery log request
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
        def self.new(body: nil, headers: nil, host: nil, method_: nil, path: nil, query: nil)
        end

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
        def to_hash
        end

        module Body
          extend Knockapi::Union

          sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
          def self.variants
          end

          UnionMember1Map = T.let(Knockapi::HashOf[Knockapi::Unknown], Knockapi::Type::Converter)
        end

        module Method
          extend Knockapi::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol) }

          GET = T.let(:GET, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          POST = T.let(:POST, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PUT = T.let(:PUT, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          DELETE = T.let(:DELETE, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PATCH = T.let(:PATCH, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)

          sig { override.returns(T::Array[Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol]) }
          def self.values
          end
        end
      end

      class Response < Knockapi::BaseModel
        sig { returns(T.nilable(T.any(String, T::Hash[Symbol, T.anything]))) }
        attr_reader :body

        sig { params(body: T.any(String, T::Hash[Symbol, T.anything])).void }
        attr_writer :body

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :headers

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        # A message delivery log response
        sig do
          params(
            body: T.any(String, T::Hash[Symbol, T.anything]),
            headers: T.nilable(T::Hash[Symbol, T.anything]),
            status: Integer
          )
            .returns(T.attached_class)
        end
        def self.new(body: nil, headers: nil, status: nil)
        end

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
        def to_hash
        end

        module Body
          extend Knockapi::Union

          sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
          def self.variants
          end

          UnionMember1Map = T.let(Knockapi::HashOf[Knockapi::Unknown], Knockapi::Type::Converter)
        end
      end
    end
  end
end
