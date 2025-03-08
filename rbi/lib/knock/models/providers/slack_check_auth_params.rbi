# typed: strong

module Knock
  module Models
    module Providers
      class SlackCheckAuthParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(String) }
        def access_token_object
        end

        sig { params(_: String).returns(String) }
        def access_token_object=(_)
        end

        sig do
          params(
            access_token_object: String,
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(access_token_object:, request_options: {})
        end

        sig { override.returns({access_token_object: String, request_options: Knock::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
