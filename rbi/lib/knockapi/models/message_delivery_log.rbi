# typed: strong

module Knockapi
  module Models
    class MessageDeliveryLog < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(String) }
      def environment_id
      end

      sig { params(_: String).returns(String) }
      def environment_id=(_)
      end

      sig { returns(String) }
      def inserted_at
      end

      sig { params(_: String).returns(String) }
      def inserted_at=(_)
      end

      # A message delivery log request
      sig { returns(Knockapi::Models::MessageDeliveryLog::Request) }
      def request
      end

      sig do
        params(_: T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Util::AnyHash))
          .returns(T.any(Knockapi::Models::MessageDeliveryLog::Request, Knockapi::Util::AnyHash))
      end
      def request=(_)
      end

      # A message delivery log response
      sig { returns(Knockapi::Models::MessageDeliveryLog::Response) }
      def response
      end

      sig do
        params(_: T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Util::AnyHash))
          .returns(T.any(Knockapi::Models::MessageDeliveryLog::Response, Knockapi::Util::AnyHash))
      end
      def response=(_)
      end

      sig { returns(String) }
      def service_name
      end

      sig { params(_: String).returns(String) }
      def service_name=(_)
      end

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
        def body
        end

        sig do
          params(
            _: T.any(
              String,
              T::Hash[Symbol, T.anything]
            )
          ).returns(T.any(String, T::Hash[Symbol, T.anything]))
        end
        def body=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def headers
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
        end
        def headers=(_)
        end

        sig { returns(T.nilable(String)) }
        def host
        end

        sig { params(_: String).returns(String) }
        def host=(_)
        end

        sig { returns(T.nilable(Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)) }
        def method_
        end

        sig do
          params(_: Knockapi::Models::MessageDeliveryLog::Request::Method::OrSymbol)
            .returns(Knockapi::Models::MessageDeliveryLog::Request::Method::OrSymbol)
        end
        def method_=(_)
        end

        sig { returns(T.nilable(String)) }
        def path
        end

        sig { params(_: String).returns(String) }
        def path=(_)
        end

        sig { returns(T.nilable(String)) }
        def query
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def query=(_)
        end

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

          Variants = type_template(:out) { {fixed: T.any(String, T::Hash[Symbol, T.anything])} }

          UnionMember1Map = T.let(Knockapi::HashOf[Knockapi::Unknown], Knockapi::Converter)

          class << self
            sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
            def variants
            end
          end
        end

        module Method
          extend Knockapi::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol) }

          GET = T.let(:GET, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          POST = T.let(:POST, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PUT = T.let(:PUT, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          DELETE = T.let(:DELETE, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)
          PATCH = T.let(:PATCH, Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Knockapi::Models::MessageDeliveryLog::Request::Method::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class Response < Knockapi::BaseModel
        sig { returns(T.nilable(T.any(String, T::Hash[Symbol, T.anything]))) }
        def body
        end

        sig do
          params(
            _: T.any(
              String,
              T::Hash[Symbol, T.anything]
            )
          ).returns(T.any(String, T::Hash[Symbol, T.anything]))
        end
        def body=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        def headers
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.anything])).returns(T.nilable(T::Hash[Symbol, T.anything]))
        end
        def headers=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def status
        end

        sig { params(_: Integer).returns(Integer) }
        def status=(_)
        end

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

          Variants = type_template(:out) { {fixed: T.any(String, T::Hash[Symbol, T.anything])} }

          UnionMember1Map = T.let(Knockapi::HashOf[Knockapi::Unknown], Knockapi::Converter)

          class << self
            sig { override.returns([String, T::Hash[Symbol, T.anything]]) }
            def variants
            end
          end
        end
      end
    end
  end
end
