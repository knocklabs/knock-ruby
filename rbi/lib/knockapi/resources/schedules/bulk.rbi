# typed: strong

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Creates up to 1,000 schedules in a single asynchronous bulk operation. The list
        # of schedules can include inline-identifications for each recipient, tenant, and
        # actor specified on a schedule.
        sig do
          params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
            .returns(Knockapi::Models::BulkOperation)
        end
        def create(request_options: {}); end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
