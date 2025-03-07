# typed: strong

module Knock
  module Models
    class MessageMarkAsUnreadParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { params(request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
