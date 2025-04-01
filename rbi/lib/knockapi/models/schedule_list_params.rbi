# typed: strong

module Knockapi
  module Models
    class ScheduleListParams < Knockapi::BaseModel
      extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      # Filter by workflow
      sig { returns(String) }
      attr_accessor :workflow

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

      # Filter by recipient
      sig do
        returns(
          T.nilable(T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)])
        )
      end
      attr_reader :recipients

      sig do
        params(
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference, Knockapi::Util::AnyHash)]
        )
          .void
      end
      attr_writer :recipients

      # Filter by tenant
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference, Knockapi::Util::AnyHash)],
          tenant: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        workflow:,
        after: nil,
        before: nil,
        page_size: nil,
        recipients: nil,
        tenant: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              workflow: String,
              after: String,
              before: String,
              page_size: Integer,
              recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference)],
              tenant: String,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      # A reference to a recipient, either a user identifier (string) or an object
      #   reference (id, collection).
      module Recipient
        extend Knockapi::Union

        class ObjectReference < Knockapi::BaseModel
          # An object identifier
          sig { returns(String) }
          attr_accessor :id

          # The collection the object belongs to
          sig { returns(String) }
          attr_accessor :collection

          # An object reference to a recipient
          sig { params(id: String, collection: String).returns(T.attached_class) }
          def self.new(id:, collection:)
          end

          sig { override.returns({id: String, collection: String}) }
          def to_hash
          end
        end

        sig { override.returns([String, Knockapi::Models::ScheduleListParams::Recipient::ObjectReference]) }
        def self.variants
        end
      end
    end
  end
end
