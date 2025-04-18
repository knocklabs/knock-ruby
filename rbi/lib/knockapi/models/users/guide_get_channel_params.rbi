# typed: strong

module Knockapi
  module Models
    module Users
      class GuideGetChannelParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The data to filter guides by.
        sig { returns(T.nilable(String)) }
        attr_reader :data

        sig { params(data: String).void }
        attr_writer :data

        # The tenant ID to filter guides by.
        sig { returns(T.nilable(String)) }
        attr_reader :tenant

        sig { params(tenant: String).void }
        attr_writer :tenant

        # The type of guides to filter by.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            data: String,
            tenant: String,
            type: String,
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(data: nil, tenant: nil, type: nil, request_options: {}); end

        sig do
          override.returns(
            {
              data: String,
              tenant: String,
              type: String,
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
