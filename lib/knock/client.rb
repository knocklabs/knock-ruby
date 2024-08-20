# frozen_string_literal: true

module Knock
  # A Net::HTTP based API client for interacting with the Knock API
  # rubocop:disable Metrics/ModuleLength
  module Client
    include Kernel

    def client
      Net::HTTP.new(Knock.config.api_hostname, 443).tap do |http_client|
        http_client.use_ssl = true
        http_client.open_timeout = Knock.config.timeout
        http_client.read_timeout = Knock.config.timeout
        http_client.write_timeout = Knock.config.timeout if RUBY_VERSION >= '2.6.0'
      end
    end

    def execute_request(request:)
      begin
        response = client.request(request)
      rescue Net::OpenTimeout, Net::ReadTimeout, Net::WriteTimeout
        raise TimeoutError.new(
          message: 'API Timeout Error'
        )
      end

      http_status = response.code.to_i
      handle_error_response(response: response) if http_status >= 400

      JSON.parse(response.body) if response.body && (response.body != '')
    end

    def get_request(path:, auth: false, params: {}, access_token: nil)
      uri = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Get.new(
        uri.to_s,
        'Content-Type' => 'application/json'
      )

      request['Authorization'] = "Bearer #{access_token || Knock.config.key!}" if auth
      request['User-Agent'] = user_agent
      request
    end

    def post_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Post.new(path, 'Content-Type' => 'application/json')
      request.body = body.to_json if body
      request['Authorization'] = "Bearer #{Knock.config.key!}" if auth
      request['User-Agent'] = user_agent
      request['Idempotency-Key'] = idempotency_key if idempotency_key
      request
    end

    def delete_request(path:, auth: false, params: {}, body: nil)
      uri = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Delete.new(
        uri.to_s,
        'Content-Type' => 'application/json'
      )

      request.body = body.to_json if body
      request['Authorization'] = "Bearer #{Knock.config.key!}" if auth
      request['User-Agent'] = user_agent
      request
    end

    def put_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Put.new(path, 'Content-Type' => 'application/json')
      request.body = body.to_json if body
      request['Authorization'] = "Bearer #{Knock.config.key!}" if auth
      request['User-Agent'] = user_agent
      request['Idempotency-Key'] = idempotency_key if idempotency_key
      request
    end

    def user_agent
      "Knock Ruby - v#{Knock::VERSION}"
    end

    # rubocop:disable Metrics/AbcSize
    # rubocop:disable Metrics/CyclomaticComplexity
    # rubocop:disable Metrics/MethodLength

    def handle_error_response(response:)
      http_status = response.code.to_i
      json = JSON.parse(response.body)

      case http_status
      when 400
        raise InvalidRequestError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      when 401
        raise AuthenticationError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      when 404
        raise NotFoundError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      when 422
        message = json['message']
        errors = extract_error(json['errors']) if json['errors']
        message += " (#{errors})" if errors

        raise UnprocessableEntityError.new(
          message: message,
          http_status: http_status,
          request_id: response['x-request-id']
        )
      when 429
        raise RateLimitExceededError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      else
        raise APIError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      end
    end

    # rubocop:enable Metrics/AbcSize
    # rubocop:enable Metrics/CyclomaticComplexity
    # rubocop:enable Metrics/MethodLength

    private

    def extract_error(errors)
      errors.map do |error|
        "#{error['field']}: #{error['message']} (#{error['type']})"
      end.join('; ')
    end
  end
  # rubocop:enable Metrics/ModuleLength
end
