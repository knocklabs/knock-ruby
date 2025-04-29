# typed: strong

module Knockapi
  module Models
    module Messages
      class ActivityListParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The cursor to fetch entries after.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The cursor to fetch entries before.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # The number of items per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # The trigger data to filter activities by.
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
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The cursor to fetch entries after.
          after: nil,
          # The cursor to fetch entries before.
          before: nil,
          # The number of items per page.
          page_size: nil,
          # The trigger data to filter activities by.
          trigger_data: nil,
          request_options: {}
        ); end
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
        def to_hash; end
      end
    end
  end
end
