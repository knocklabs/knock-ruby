# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class AwsSnsPushChannelDataTargetArnsOnly < Knockapi::Internal::Type::BaseModel
        # @!attribute target_arns
        #   A list of platform endpoint ARNs. See
        #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
        #
        #   @return [Array<String>]
        required :target_arns, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(target_arns:)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::AwsSnsPushChannelDataTargetArnsOnly} for more
        #   details.
        #
        #   AWS SNS push channel data.
        #
        #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin
      end
    end
  end
end
