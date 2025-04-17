# typed: strong

module Knockapi
  class Client < Knockapi::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :bearer_token

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

    sig { returns(Knockapi::Resources::Workflows) }
    attr_reader :workflows

    sig { returns(Knockapi::Resources::Schedules) }
    attr_reader :schedules

    sig { returns(Knockapi::Resources::Channels) }
    attr_reader :channels

    sig { returns(Knockapi::Resources::Audiences) }
    attr_reader :audiences

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer_token: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["KNOCK_API_KEY"]`
      bearer_token: ENV["KNOCK_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["KNOCK_BASE_URL"]`
      base_url: ENV["KNOCK_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    ); end
  end
end
