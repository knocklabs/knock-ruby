# typed: strong

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
        extend Knockapi::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Knockapi::Recipients::PushChannelData,
              Knockapi::Recipients::OneSignalChannelData,
              Knockapi::Recipients::SlackChannelData,
              Knockapi::Recipients::MsTeamsChannelData,
              Knockapi::Recipients::DiscordChannelData
            )
          end

        sig do
          override.returns(
            T::Array[
              Knockapi::Recipients::InlineChannelDataRequestItem::Variants
            ]
          )
        end
        def self.variants
        end
      end

      InlineChannelDataRequest =
        T.let(
          Knockapi::Internal::Type::HashOf[
            union: Knockapi::Recipients::InlineChannelDataRequestItem
          ],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
