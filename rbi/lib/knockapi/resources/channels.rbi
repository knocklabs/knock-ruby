# typed: strong

module Knockapi
  module Resources
    class Channels
      sig { returns(Knockapi::Resources::Channels::Bulk) }
      attr_reader :bulk

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
