# frozen_string_literal: true

module Knock
  # Knock specific errors
  class KnockError < StandardError
    attr_reader :http_status, :request_id

    def initialize(message: nil, error: nil, error_description: nil, http_status: nil, request_id: nil)
      super
      @message = message
      @error = error
      @error_description = error_description
      @http_status = http_status
      @request_id = request_id
    end

    def to_s
      status_string = @http_status.nil? ? '' : "Status #{@http_status}, "
      id_string = @request_id.nil? ? '' : " - request ID: #{@request_id}"

      if @error && @error_description
        error_string = "error: #{@error}, error_description: #{@error_description}"
        "#{status_string}#{error_string}#{id_string}"
      elsif @error
        "#{status_string}#{@error}#{id_string}"
      else
        "#{status_string}#{@message}#{id_string}"
      end
    end
  end

  # APIError is a generic error that may be raised in cases where none of the
  # other named errors cover the problem. It could also be raised in the case
  # that a new error has been introduced in the API, but this version of the
  # Ruby SDK doesn't know how to handle it.
  class APIError < KnockError; end

  # AuthenticationError is raised when invalid credentials are used to connect
  # to Knock's servers.
  class AuthenticationError < KnockError; end

  # InvalidRequestError is raised when a request is initiated with invalid
  # parameters.
  class InvalidRequestError < KnockError; end

  # RateLimitExceededError is raised when the rate limit for the API has been hit
  class RateLimitExceededError < KnockError; end

  # NotFoundError is raised when a resource is not found
  class NotFoundError < KnockError; end

  # TimeoutError is raised when the HTTP request to the API times out
  class TimeoutError < KnockError; end

  # UnprocessableEntityError is raised when a request is made that cannot be processed
  class UnprocessableEntityError < KnockError; end
end
