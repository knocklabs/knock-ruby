# typed: strong

module Knock
  class Client < Knock::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def bearer_token
    end

    sig { returns(Knock::Resources::Recipients) }
    def recipients
    end

    sig { returns(Knock::Resources::Users) }
    def users
    end

    sig { returns(Knock::Resources::Objects) }
    def objects
    end

    sig { returns(Knock::Resources::Tenants) }
    def tenants
    end

    sig { returns(Knock::Resources::BulkOperations) }
    def bulk_operations
    end

    sig { returns(Knock::Resources::Messages) }
    def messages
    end

    sig { returns(Knock::Resources::Providers) }
    def providers
    end

    sig { returns(Knock::Resources::Workflows) }
    def workflows
    end

    sig { returns(Knock::Resources::Schedules) }
    def schedules
    end

    sig { returns(Knock::Resources::Channels) }
    def channels
    end

    sig { returns(Knock::Resources::Audiences) }
    def audiences
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

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
      base_url: nil,
      bearer_token: ENV["KNOCK_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
