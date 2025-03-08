# typed: strong

module Knock
  module Models
    class MessageDeliveryLog < Knock::BaseModel
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

      sig { returns(Knock::Models::MessageDeliveryLog::Request) }
      def request
      end

      sig { params(_: Knock::Models::MessageDeliveryLog::Request).returns(Knock::Models::MessageDeliveryLog::Request) }
      def request=(_)
      end

      sig { returns(Knock::Models::MessageDeliveryLog::Response) }
      def response
      end

      sig do
        params(_: Knock::Models::MessageDeliveryLog::Response).returns(Knock::Models::MessageDeliveryLog::Response)
      end
      def response=(_)
      end

      sig { returns(String) }
      def service_name
      end

      sig { params(_: String).returns(String) }
      def service_name=(_)
      end

      sig do
        params(
          id: String,
          _typename: String,
          environment_id: String,
          inserted_at: String,
          request: Knock::Models::MessageDeliveryLog::Request,
          response: Knock::Models::MessageDeliveryLog::Response,
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
              request: Knock::Models::MessageDeliveryLog::Request,
              response: Knock::Models::MessageDeliveryLog::Response,
              service_name: String
            }
          )
      end
      def to_hash
      end

      class Request < Knock::BaseModel
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

        sig { returns(T.nilable(Symbol)) }
        def method_
        end

        sig { params(_: Symbol).returns(Symbol) }
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

        sig do
          params(
            body: T.any(String, T::Hash[Symbol, T.anything]),
            headers: T.nilable(T::Hash[Symbol, T.anything]),
            host: String,
            method_: Symbol,
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
                method_: Symbol,
                path: String,
                query: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Body < Knock::Union
          abstract!

          UnionMember1Map = T.type_alias { T::Hash[Symbol, T.anything] }

          class << self
            sig { override.returns([[NilClass, String], [NilClass, T::Hash[Symbol, T.anything]]]) }
            private def variants
            end
          end
        end

        class Method < Knock::Enum
          abstract!

          GET = :GET
          POST = :POST
          PUT = :PUT
          DELETE = :DELETE
          PATCH = :PATCH

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Response < Knock::BaseModel
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

        class Body < Knock::Union
          abstract!

          UnionMember1Map = T.type_alias { T::Hash[Symbol, T.anything] }

          class << self
            sig { override.returns([[NilClass, String], [NilClass, T::Hash[Symbol, T.anything]]]) }
            private def variants
            end
          end
        end
      end
    end
  end
end
