# frozen_string_literal: true

module Knockapi
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Knockapi::Error
  end

  class APIError < Knockapi::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Knockapi::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < Knockapi::APIConnectionError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < Knockapi::APIError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [Knockapi::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        Knockapi::BadRequestError.new(**kwargs)
      in 401
        Knockapi::AuthenticationError.new(**kwargs)
      in 403
        Knockapi::PermissionDeniedError.new(**kwargs)
      in 404
        Knockapi::NotFoundError.new(**kwargs)
      in 409
        Knockapi::ConflictError.new(**kwargs)
      in 422
        Knockapi::UnprocessableEntityError.new(**kwargs)
      in 429
        Knockapi::RateLimitError.new(**kwargs)
      in (500..)
        Knockapi::InternalServerError.new(**kwargs)
      else
        Knockapi::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < Knockapi::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Knockapi::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Knockapi::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Knockapi::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Knockapi::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Knockapi::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Knockapi::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Knockapi::APIStatusError
    HTTP_STATUS = (500..)
  end
end
