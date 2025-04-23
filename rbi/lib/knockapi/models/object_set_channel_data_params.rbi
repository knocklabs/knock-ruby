# typed: strong

module Knockapi
  module Models
    class ObjectSetChannelDataParams < Knockapi::Models::Recipients::ChannelDataRequest
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :object_id_

      sig do
        params(
          object_id_: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(object_id_:, request_options: {}); end

      sig { override.returns({object_id_: String, request_options: Knockapi::RequestOptions}) }
      def to_hash; end
    end
  end
end
