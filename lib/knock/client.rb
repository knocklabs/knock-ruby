module Knock
  # A Net::HTTP based API client for interacting with the Knock API
  module Client
    include Kernel

    def client
      return @client if defined?(@client)

      @client = Net::HTTP.new(Knock::API_HOSTNAME, 4001)
      @client.use_ssl = false

      @client
    end

    def execute_request(request:)
      response = client.request(request)

      http_status = response.code.to_i
      handle_error_response(response: response) if http_status >= 400

      if response.body and response.body != ""
        JSON.parse(response.body) 
      end
    end

    def get_request(path:, auth: false, params: {}, access_token: nil)
      uri = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Get.new(
        uri.to_s,
        "Content-Type" => "application/json"
      )

      request["Authorization"] = "Bearer #{access_token || Knock.key!}" if auth
      request["User-Agent"] = user_agent
      request
    end

    def post_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Post.new(path, "Content-Type" => "application/json")
      request.body = body.to_json if body
      request["Authorization"] = "Bearer #{Knock.key!}" if auth
      request["User-Agent"] = user_agent
      request
    end

    def delete_request(path:, auth: false, params: {})
      uri = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Delete.new(
        uri.to_s,
        "Content-Type" => "application/json"
      )

      request["Authorization"] = "Bearer #{Knock.key!}" if auth
      request["User-Agent"] = user_agent
      request
    end

    def put_request(path:, auth: false, idempotency_key: nil, body: nil)
      request = Net::HTTP::Put.new(path, "Content-Type" => "application/json")
      request.body = body.to_json if body
      request["Authorization"] = "Bearer #{Knock.key!}" if auth
      request["User-Agent"] = user_agent
      request
    end

    def user_agent
      "Knock Ruby - v#{Knock::VERSION}"
    end

    def handle_error_response(response:)
      http_status = response.code.to_i
      json = JSON.parse(response.body)

      case http_status
      when 400
        raise InvalidRequestError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 401
        raise AuthenticationError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 404
        raise APIError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 422
        message = json["message"]
        errors = extract_error(json["errors"]) if json["errors"]
        message += " (#{errors})" if errors

        raise InvalidRequestError.new(
          message: message,
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      end
    end

    private

    def extract_error(errors)
      errors.map do |error|
        "#{error["field"]}: #{error["message"]} (#{error["type"]})"
      end.join("; ")
    end
  end
end
