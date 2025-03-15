# typed: strong

module Knockapi
  class Client < Knockapi::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def bearer_token
    end

    sig { returns(Knockapi::Resources::Recipients) }
    def recipients
    end

    sig { returns(Knockapi::Resources::Users) }
    def users
    end

    sig { returns(Knockapi::Resources::Objects) }
    def objects
    end

    sig { returns(Knockapi::Resources::Tenants) }
    def tenants
    end

    sig { returns(Knockapi::Resources::BulkOperations) }
    def bulk_operations
    end

    sig { returns(Knockapi::Resources::Messages) }
    def messages
    end

    sig { returns(Knockapi::Resources::Providers) }
    def providers
    end

    sig { returns(Knockapi::Resources::Workflows) }
    def workflows
    end

    sig { returns(Knockapi::Resources::Schedules) }
    def schedules
    end

    sig { returns(Knockapi::Resources::Channels) }
    def channels
    end

    sig { returns(Knockapi::Resources::Audiences) }
    def audiences
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        base_url: T.nilable(String),
        bearer_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Defaults to `ENV["KNOCK_API_KEY"]`
      bearer_token: ENV["KNOCK_API_KEY"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
