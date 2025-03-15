# typed: strong

module Knockapi
  module Models
    class MessageListActivitiesParams < Knockapi::BaseModel
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

      # The trigger data to filter activities by
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
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(after: nil, before: nil, page_size: nil, trigger_data: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              after: String,
              before: String,
              page_size: Integer,
              trigger_data: String,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
