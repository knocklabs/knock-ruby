# typed: strong

module Knockapi
  module Models
    class MessageListDeliveryLogsParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     after: String,
                     before: String,
                     page_size: Integer,
                     request_options: Knockapi::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
