# frozen_string_literal: true

require 'knock/version'
require 'json'
require 'knock/configuration'

# Setup for Knock client
module Knock
  def self.default_config
    Configuration.new.tap do |config|
      config.api_hostname = ENV['KNOCK_API_HOSTNAME'] || 'knock.app'
      config.key = ENV['KNOCK_API_KEY']
    end
  end

  def self.config
    @config ||= default_config
  end

  def self.configure
    yield(config)
  end

  def self.key=(value)
    warn '`Knock.key=` is deprecated. Use `Knock.configure` instead.'

    config.key = value
  end

  def self.key
    warn '`Knock.key` is deprecated. Use `Knock.configure` instead.'
    config.key
  end

  autoload :Base, 'knock/base'
  autoload :Client, 'knock/client'
  autoload :Configuration, 'knock/configuration'

  # Resources
  autoload :Preferences, 'knock/preferences'
  autoload :Users, 'knock/users'
  autoload :Workflows, 'knock/workflows'
  autoload :BulkOperations, 'knock/bulk_operations'
  autoload :Objects, 'knock/objects'
  autoload :Tenants, 'knock/tenants'
  autoload :Messages, 'knock/messages'

  # Errors
  autoload :APIError, 'knock/errors'
  autoload :AuthenticationError, 'knock/errors'
  autoload :InvalidRequestError, 'knock/errors'
  autoload :TimeoutError, 'knock/errors'

  # Triggers the workflow with the given key
  #
  # @param [String] key The workflow key
  # @param [String] actor The actor ID
  # @param [Array<String>] recipients The recipient IDs
  # @param [Hash] data The data to pass to the workflow
  # @param [String] cancellation_key An optional key to identify this workflow
  #  invocation for cancelling
  # @param [String] tenant An optional tenant identifier
  #
  # @return [Hash] A workflow trigger result
  def self.notify(**args)
    Knock::Workflows.trigger(**args)
  end
end
