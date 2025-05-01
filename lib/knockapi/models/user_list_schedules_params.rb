# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list_schedules
    class UserListSchedulesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute tenant
      #   The tenant ID to filter schedules for.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!attribute workflow
      #   The workflow key to filter schedules for.
      #
      #   @return [String, nil]
      optional :workflow, String

      # @!method initialize(after: nil, before: nil, page_size: nil, tenant: nil, workflow: nil, request_options: {})
      #   @param after [String] The cursor to fetch entries after.
      #
      #   @param before [String] The cursor to fetch entries before.
      #
      #   @param page_size [Integer] The number of items per page.
      #
      #   @param tenant [String] The tenant ID to filter schedules for.
      #
      #   @param workflow [String] The workflow key to filter schedules for.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
