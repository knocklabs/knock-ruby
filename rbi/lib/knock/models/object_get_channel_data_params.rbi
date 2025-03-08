# typed: strong

module Knock
  module Models
    class ObjectGetChannelDataParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig do
        params(request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Knock::RequestOptions}) }
      def to_hash
      end
    end
  end
end
