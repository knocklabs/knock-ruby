module Knock
  ## The Base class handles setting and reading the Knock API Key for authentication
  module Base
    attr_accessor :key

    class << self
      attr_writer :key
      attr_reader :key
    end
  end
end
