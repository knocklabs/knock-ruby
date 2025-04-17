# frozen_string_literal: true

module Knockapi
  class Client < Knockapi::Internal::Transport::BaseClient
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

    # @return [Knockapi::Resources::Recipients]
    attr_reader :recipients

    # @return [Knockapi::Resources::Users]
    attr_reader :users

    # @return [Knockapi::Resources::Objects]
    attr_reader :objects

    # @return [Knockapi::Resources::Tenants]
    attr_reader :tenants

    # @return [Knockapi::Resources::BulkOperations]
    attr_reader :bulk_operations

    # @return [Knockapi::Resources::Messages]
    attr_reader :messages

    # @return [Knockapi::Resources::Providers]
    attr_reader :providers

    # @return [Knockapi::Resources::Workflows]
    attr_reader :workflows

    # @return [Knockapi::Resources::Schedules]
    attr_reader :schedules

    # @return [Knockapi::Resources::Channels]
    attr_reader :channels

    # @return [Knockapi::Resources::Audiences]
    attr_reader :audiences

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_token [String, nil] Defaults to `ENV["KNOCK_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["KNOCK_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer_token: ENV["KNOCK_API_KEY"],
      base_url: ENV["KNOCK_BASE_URL"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.knock.app"

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required, and can be set via environ: \"KNOCK_API_KEY\"")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @recipients = Knockapi::Resources::Recipients.new(client: self)
      @users = Knockapi::Resources::Users.new(client: self)
      @objects = Knockapi::Resources::Objects.new(client: self)
      @tenants = Knockapi::Resources::Tenants.new(client: self)
      @bulk_operations = Knockapi::Resources::BulkOperations.new(client: self)
      @messages = Knockapi::Resources::Messages.new(client: self)
      @providers = Knockapi::Resources::Providers.new(client: self)
      @workflows = Knockapi::Resources::Workflows.new(client: self)
      @schedules = Knockapi::Resources::Schedules.new(client: self)
      @channels = Knockapi::Resources::Channels.new(client: self)
      @audiences = Knockapi::Resources::Audiences.new(client: self)
    end
  end
end
