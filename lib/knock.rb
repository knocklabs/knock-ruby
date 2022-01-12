# frozen_string_literal: true

require "knock/version"
require "json"

module Knock
  API_HOSTNAME = ENV["KNOCK_API_HOSTNAME"] || "api.knock.app"

  def self.key=(value)
    Base.key = value
  end

  def self.key
    Base.key
  end

  def self.key!
    key || raise("Knock.key not set")
  end

  autoload :Base, "knock/base"
  autoload :Client, "knock/client"

  # Resources
  autoload :Preferences, "knock/preferences"
  autoload :Users, "knock/users"
  autoload :Workflows, "knock/workflows"
  autoload :BulkOperations, "knock/bulk_operations"
  autoload :Objects, "knock/objects"

  # Errors
  autoload :APIError, "knock/errors"
  autoload :AuthenticationError, "knock/errors"
  autoload :InvalidRequestError, "knock/errors"

  key = ENV["KNOCK_API_KEY"]
  Knock.key = key unless key.nil?

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
