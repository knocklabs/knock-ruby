# frozen_string_literal: true

module Knock
  class Client < Knock::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :bearer_token

    # @return [Knock::Resources::Users]
    attr_reader :users

    # @return [Knock::Resources::Objects]
    attr_reader :objects

    # @return [Knock::Resources::Tenants]
    attr_reader :tenants

    # @return [Knock::Resources::BulkOperations]
    attr_reader :bulk_operations

    # @return [Knock::Resources::Messages]
    attr_reader :messages

    # @return [Knock::Resources::Providers]
    attr_reader :providers

    # @return [Knock::Resources::Workflows]
    attr_reader :workflows

    # @return [Knock::Resources::Schedules]
    attr_reader :schedules

    # @return [Knock::Resources::Channels]
    attr_reader :channels

    # @return [Knock::Resources::Audiences]
    attr_reader :audiences

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param bearer_token [String, nil] Defaults to `ENV["KNOCK_API_KEY"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      bearer_token: ENV["KNOCK_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.knock.app"

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @users = Knock::Resources::Users.new(client: self)
      @objects = Knock::Resources::Objects.new(client: self)
      @tenants = Knock::Resources::Tenants.new(client: self)
      @bulk_operations = Knock::Resources::BulkOperations.new(client: self)
      @messages = Knock::Resources::Messages.new(client: self)
      @providers = Knock::Resources::Providers.new(client: self)
      @workflows = Knock::Resources::Workflows.new(client: self)
      @schedules = Knock::Resources::Schedules.new(client: self)
      @channels = Knock::Resources::Channels.new(client: self)
      @audiences = Knock::Resources::Audiences.new(client: self)
    end
  end
end
