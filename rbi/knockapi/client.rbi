# typed: strong

module Knockapi
  class Client < Knockapi::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    # The slug of an existing branch
    sig { returns(T.nilable(String)) }
    attr_reader :branch

    sig { returns(Knockapi::Resources::Recipients) }
    attr_reader :recipients

    sig { returns(Knockapi::Resources::Users) }
    attr_reader :users

    sig { returns(Knockapi::Resources::Objects) }
    attr_reader :objects

    sig { returns(Knockapi::Resources::Tenants) }
    attr_reader :tenants

    sig { returns(Knockapi::Resources::BulkOperations) }
    attr_reader :bulk_operations

    sig { returns(Knockapi::Resources::Messages) }
    attr_reader :messages

    sig { returns(Knockapi::Resources::Providers) }
    attr_reader :providers

    sig { returns(Knockapi::Resources::Integrations) }
    attr_reader :integrations

    sig { returns(Knockapi::Resources::Workflows) }
    attr_reader :workflows

    sig { returns(Knockapi::Resources::Schedules) }
    attr_reader :schedules

    sig { returns(Knockapi::Resources::Channels) }
    attr_reader :channels

    sig { returns(Knockapi::Resources::Audiences) }
    attr_reader :audiences

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        branch: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["KNOCK_API_KEY"]`
      api_key: ENV["KNOCK_API_KEY"],
      # The slug of an existing branch Defaults to `ENV["KNOCK_BRANCH"]`
      branch: ENV["KNOCK_BRANCH"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["KNOCK_BASE_URL"]`
      base_url: ENV["KNOCK_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Knockapi::Client::DEFAULT_MAX_RETRIES,
      timeout: Knockapi::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Knockapi::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Knockapi::Client::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
