# typed: strong

module Knockapi
  module Models
    class MessageGetContentParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {}); end

      sig { override.returns({request_options: Knockapi::RequestOptions}) }
      def to_hash; end
    end
  end
end
