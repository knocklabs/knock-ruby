# typed: strong

module Knockapi
  module Models
    module Users
      class GuideMarkMessageAsSeenParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The unique identifier for the channel.
        sig { returns(String) }
        attr_accessor :channel_id

        # The unique identifier for the guide.
        sig { returns(String) }
        attr_accessor :guide_id

        # The key of the guide.
        sig { returns(String) }
        attr_accessor :guide_key

        # The step reference of the guide.
        sig { returns(String) }
        attr_accessor :guide_step_ref

        # The content of the guide.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :content

        sig { params(content: T::Hash[Symbol, T.anything]).void }
        attr_writer :content

        # The data of the guide.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :data

        sig { params(data: T::Hash[Symbol, T.anything]).void }
        attr_writer :data

        # Whether the guide is final.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_final

        sig { params(is_final: T::Boolean).void }
        attr_writer :is_final

        # The metadata of the guide.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # The tenant ID of the guide.
        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        sig do
          params(
            channel_id: String,
            guide_id: String,
            guide_key: String,
            guide_step_ref: String,
            content: T::Hash[Symbol, T.anything],
            data: T::Hash[Symbol, T.anything],
            is_final: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            tenant: T.nilable(String),
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          channel_id:,
          guide_id:,
          guide_key:,
          guide_step_ref:,
          content: nil,
          data: nil,
          is_final: nil,
          metadata: nil,
          tenant: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                channel_id: String,
                guide_id: String,
                guide_key: String,
                guide_step_ref: String,
                content: T::Hash[Symbol, T.anything],
                data: T::Hash[Symbol, T.anything],
                is_final: T::Boolean,
                metadata: T::Hash[Symbol, T.anything],
                tenant: T.nilable(String),
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
