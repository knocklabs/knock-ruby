# frozen_string_literal: true

module Knock
  ## The Base class handles setting and reading the Knock API Key for authentication
  module Base
    attr_accessor :key

    class << self
      attr_accessor :key
    end
  end
end
