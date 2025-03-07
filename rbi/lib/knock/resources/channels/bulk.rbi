# typed: strong

module Knock
  module Resources
    class Channels
      class Bulk
        sig do
          params(
            action: Symbol,
            channel_id: String,
            archived: Symbol,
            delivery_status: Symbol,
            engagement_status: Symbol,
            has_tenant: T::Boolean,
            newer_than: Time,
            older_than: Time,
            recipient_ids: T::Array[String],
            tenants: T::Array[String],
            trigger_data: String,
            workflows: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def update_message_status(
          action,
          channel_id:,
          archived: nil,
          delivery_status: nil,
          engagement_status: nil,
          has_tenant: nil,
          newer_than: nil,
          older_than: nil,
          recipient_ids: nil,
          tenants: nil,
          trigger_data: nil,
          workflows: nil,
          request_options: {}
        )
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
