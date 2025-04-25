# typed: strong

module Knockapi
  module Models
    module Users
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # A list of user IDs.
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            user_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # A list of user IDs.
          user_ids:,
          request_options: {}
        ); end
        sig { override.returns({user_ids: T::Array[String], request_options: Knockapi::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
