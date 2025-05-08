# typed: strong

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Bulk creates up to 1,000 schedules at a time. This endpoint also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `actor`, `recipient`, and `tenant` fields.
        sig do
          params(
            schedules:
              T::Array[Knockapi::Schedules::BulkCreateParams::Schedule::OrHash],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::BulkOperation)
        end
        def create(
          # A list of schedules.
          schedules:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
