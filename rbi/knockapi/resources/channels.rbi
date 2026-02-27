# typed: strong

module Knockapi
  module Resources
    class Channels
      # A bulk operation is a set of changes applied across zero or more records
      # triggered via a call to the Knock API and performed asynchronously.
      sig { returns(Knockapi::Resources::Channels::Bulk) }
      attr_reader :bulk

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
