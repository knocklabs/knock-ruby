# typed: strong

module Knock
  module Models
    class MessageListActivitiesParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig { returns(T.nilable(String)) }
      def trigger_data
      end

      sig { params(_: String).returns(String) }
      def trigger_data=(_)
      end

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          trigger_data: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(after: nil, before: nil, page_size: nil, trigger_data: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              page_size: Integer,
              trigger_data: String,
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
