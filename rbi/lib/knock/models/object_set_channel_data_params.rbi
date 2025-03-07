# typed: strong

module Knock
  module Models
    class ObjectSetChannelDataParams < Knock::Models::ChannelDataRequest
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

      sig { returns(String) }
      def object_id_
      end

      sig { params(_: String).returns(String) }
      def object_id_=(_)
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(collection:, object_id_:, request_options: {})
      end

      sig do
        override.returns({collection: String, object_id_: String, request_options: Knock::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
