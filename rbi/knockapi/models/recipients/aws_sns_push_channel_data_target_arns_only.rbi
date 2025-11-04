# typed: strong

module Knockapi
  module Models
    module Recipients
      class AwsSnsPushChannelDataTargetArnsOnly < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
              Knockapi::Internal::AnyHash
            )
          end

        # A list of platform endpoint ARNs. See
        # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
        sig { returns(T::Array[String]) }
        attr_accessor :target_arns

        # AWS SNS push channel data.
        sig { params(target_arns: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # A list of platform endpoint ARNs. See
          # [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
          target_arns:
        )
        end

        sig { override.returns({ target_arns: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
