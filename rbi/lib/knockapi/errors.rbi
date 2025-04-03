# typed: strong

module Knockapi
  module Errors
    class Error < StandardError
      sig { returns(T.nilable(StandardError)) }
      attr_accessor :cause
    end

    class ConversionError < Knockapi::Errors::Error
    end

    class APIError < Knockapi::Errors::Error
      sig { returns(URI::Generic) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :status

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: T.nilable(Integer),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      end
    end

    class APIConnectionError < Knockapi::Errors::APIError
      sig { void }
      attr_accessor :status

      sig { void }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
      end
    end

    class APITimeoutError < Knockapi::Errors::APIConnectionError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
      end
    end

    class APIStatusError < Knockapi::Errors::APIError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.for(url:, status:, body:, request:, response:, message: nil)
      end

      sig { returns(Integer) }
      attr_accessor :status

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(url:, status:, body:, request:, response:, message: nil)
      end
    end

    class BadRequestError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Knockapi::Errors::APIStatusError
      HTTP_STATUS = T.let((500..), T::Range[Integer])
    end
  end

  Error = Knockapi::Errors::Error

  ConversionError = Knockapi::Errors::ConversionError

  APIError = Knockapi::Errors::APIError

  APIStatusError = Knockapi::Errors::APIStatusError

  APIConnectionError = Knockapi::Errors::APIConnectionError

  APITimeoutError = Knockapi::Errors::APITimeoutError

  BadRequestError = Knockapi::Errors::BadRequestError

  AuthenticationError = Knockapi::Errors::AuthenticationError

  PermissionDeniedError = Knockapi::Errors::PermissionDeniedError

  NotFoundError = Knockapi::Errors::NotFoundError

  ConflictError = Knockapi::Errors::ConflictError

  UnprocessableEntityError = Knockapi::Errors::UnprocessableEntityError

  RateLimitError = Knockapi::Errors::RateLimitError

  InternalServerError = Knockapi::Errors::InternalServerError
end
