# typed: strong

module Knockapi
  module Resources
    class Schedules
      # Create schedules
      sig do
        params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def create(request_options: {}); end

      # Update schedules
      sig do
        params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def update(request_options: {}); end

      # List schedules
      sig do
        params(
          workflow: String,
          after: String,
          before: String,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::ScheduleListParams::Recipient::UnionMember1, Knockapi::Internal::AnyHash)],
          tenant: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Schedule])
      end
      def list(
        # Filter by workflow
        workflow:,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        # Filter by recipient
        recipients: nil,
        # Filter by tenant
        tenant: nil,
        request_options: {}
      ); end
      # Delete schedules
      sig do
        params(request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)))
          .returns(T::Array[Knockapi::Models::Schedule])
      end
      def delete(request_options: {}); end

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
