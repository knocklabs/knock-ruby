# typed: strong

module Knockapi
  module Models
    module Users
      class FeedGetSettingsParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        sig do
          params(request_options: Knockapi::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Knockapi::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
