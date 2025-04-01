# typed: strong

module Knockapi
  module Models
    class MessageMarkAsReadParams < Knockapi::BaseModel
      extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig do
        params(
          request_options: T.any(
            Knockapi::RequestOptions,
            Knockapi::Util::AnyHash
          )
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Knockapi::RequestOptions}) }
      def to_hash
      end
    end
  end
end
