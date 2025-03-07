# frozen_string_literal: true

module Knock
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Knock::Error
  end

  class APIError < Knock::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Knock::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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

  class APITimeoutError < Knock::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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

  class APIStatusError < Knock::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [Knock::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        Knock::BadRequestError.new(**kwargs)
      in 401
        Knock::AuthenticationError.new(**kwargs)
      in 403
        Knock::PermissionDeniedError.new(**kwargs)
      in 404
        Knock::NotFoundError.new(**kwargs)
      in 409
        Knock::ConflictError.new(**kwargs)
      in 422
        Knock::UnprocessableEntityError.new(**kwargs)
      in 429
        Knock::RateLimitError.new(**kwargs)
      in (500..)
        Knock::InternalServerError.new(**kwargs)
      else
        Knock::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
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

  class BadRequestError < Knock::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Knock::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Knock::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Knock::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Knock::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Knock::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Knock::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Knock::APIStatusError
    HTTP_STATUS = (500..)
  end
end
