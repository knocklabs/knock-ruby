# typed: strong

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Deletes tenants in bulk
        sig do
          params(
            tenant_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The IDs of the tenants to delete
          tenant_ids:,
          request_options: {}
        ); end
        # Sets tenants in bulk
        sig do
          params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(request_options: {}); end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
