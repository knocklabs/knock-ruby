# typed: strong

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Bulk creates up to 1,000 schedules at a time. This endpoint also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `actor`, `recipient`, and `tenant` fields.
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
