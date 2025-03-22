# typed: strong

module Knockapi
  module Models
    class MessageListActivitiesParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # The trigger data to filter activities by
      sig { returns(T.nilable(String)) }
      attr_reader :trigger_data

      sig { params(trigger_data: String).void }
      attr_writer :trigger_data

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          trigger_data: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
