# typed: strong

module Knockapi
  module Models
    module Messages
      class ActivityListResponse < Knockapi::Internal::Type::BaseModel
        # A list of activities.
        sig { returns(T::Array[Knockapi::Models::Activity]) }
        attr_accessor :entries

        # Pagination information for a list of resources.
        sig { returns(Knockapi::Models::PageInfo) }
        attr_reader :page_info

        sig { params(page_info: T.any(Knockapi::Models::PageInfo, Knockapi::Internal::AnyHash)).void }
        attr_writer :page_info

        # Returns a paginated list of `activities` associated with a given message. For
        # messages produced after a [batch step](/designing-workflows/batch-function),
        # this will contain one or more activities. Non-batched messages will always
        # return a single activity.
        sig do
          params(
            entries: T::Array[T.any(Knockapi::Models::Activity, Knockapi::Internal::AnyHash)],
            page_info: T.any(Knockapi::Models::PageInfo, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entries:, page_info:); end

        sig { override.returns({entries: T::Array[Knockapi::Models::Activity], page_info: Knockapi::Models::PageInfo}) }
        def to_hash; end
      end
    end
  end
end
