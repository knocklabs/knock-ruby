# typed: strong

module Knockapi
  module Models
    module Users
      class GuideMarkMessageAsArchivedParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the channel.
          channel_id:,
          # The unique identifier for the guide.
          guide_id:,
          # The key of the guide.
          guide_key:,
          # The step reference of the guide.
          guide_step_ref:,
          # The content of the guide.
          content: nil,
          # The data of the guide.
          data: nil,
          # Whether the guide is final.
          is_final: nil,
          # The metadata of the guide.
          metadata: nil,
          # The tenant ID of the guide.
          tenant: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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
        def to_hash
        end
      end
    end
  end
end
