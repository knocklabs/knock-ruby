# frozen_string_literal: true

module Knock
  # A Net::HTTP based API client for interacting with the Knock API
  module Client
    include Kernel

    def client
      Thread.current[:knock_client] ||= build_client
    end

    def execute_request(request:)
      response = client.request(request)

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

      request['Authorization'] = "Bearer #{access_token || Knock.key!}" if auth
      request['User-Agent'] = user_agent
      request
    end

    def post_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Post.new(path, 'Content-Type' => 'application/json')
      request.body = body.to_json if body
      request['Authorization'] = "Bearer #{Knock.key!}" if auth
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
      request['Authorization'] = "Bearer #{Knock.key!}" if auth
      request['User-Agent'] = user_agent
      request
    end

    def put_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Put.new(path, 'Content-Type' => 'application/json')
      request.body = body.to_json if body
      request['Authorization'] = "Bearer #{Knock.key!}" if auth
      request['User-Agent'] = user_agent
      request['Idempotency-Key'] = idempotency_key if idempotency_key
      request
    end

    def user_agent
      "Knock Ruby - v#{Knock::VERSION}"
    end

    # rubocop:disable Metrics/AbcSize

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
        raise APIError.new(
          message: json['message'],
          http_status: http_status,
          request_id: response['x-request-id']
        )
      when 422
        message = json['message']
        errors = extract_error(json['errors']) if json['errors']
        message += " (#{errors})" if errors

        raise InvalidRequestError.new(
          message: message,
          http_status: http_status,
          request_id: response['x-request-id']
        )
      end
    end

    # rubocop:enable Metrics/AbcSize

    private

    def extract_error(errors)
      errors.map do |error|
        "#{error['field']}: #{error['message']} (#{error['type']})"
      end.join('; ')
    end

    def build_client
      client = Net::HTTP.new(Knock::API_HOSTNAME, 443)
      client.use_ssl = true
      client
    end
  end
end
