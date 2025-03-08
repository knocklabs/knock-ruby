# typed: strong

module Knock
  module Models
    class ObjectListSchedulesParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(String) }
      def collection
      end

      sig { params(_: String).returns(String) }
      def collection=(_)
      end

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
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      sig { returns(T.nilable(String)) }
      def workflow
      end

      sig { params(_: String).returns(String) }
      def workflow=(_)
      end

      sig do
        params(
          collection: String,
          after: String,
          before: String,
          page_size: Integer,
          tenant: String,
          workflow: String,
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(collection:, after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              collection: String,
              after: String,
              before: String,
              page_size: Integer,
              tenant: String,
              workflow: String,
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
