# typed: strong

module Knockapi
  module Models
    module Recipients
      class PreferenceSetRequest < Knockapi::Internal::Type::BaseModel
        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1)]
            )
          )
        end
        attr_accessor :categories

        # Channel type preferences
        sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
        attr_reader :channel_types

        sig do
          params(
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
          )
            .void
        end
        attr_writer :channel_types

        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1)]
            )
          )
        end
        attr_accessor :workflows

        # Set preferences for a recipient
        sig do
          params(
            categories: T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1,
                  Knockapi::Internal::AnyHash
                )
              ]
            ),
            channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
            workflows: T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  T::Boolean,
                  Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1,
                  Knockapi::Internal::AnyHash
                )
              ]
            )
          )
            .returns(T.attached_class)
        end
        def self.new(categories: nil, channel_types: nil, workflows: nil); end

        sig do
          override
            .returns(
              {
                categories: T.nilable(
                  T::Hash[Symbol, T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1)]
                ),
                channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                workflows: T.nilable(
                  T::Hash[Symbol, T.any(T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1)]
                )
              }
            )
        end
        def to_hash; end

        # Workflow or category preferences within a preference set
        module Category
          extend Knockapi::Internal::Type::Union

          class UnionMember1 < Knockapi::Internal::Type::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_reader :conditions

            sig { params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)]).void }
            attr_writer :conditions

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
                conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)]
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil); end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T::Array[Knockapi::Models::Condition]
                  }
                )
            end
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Category::UnionMember1]) }
          def self.variants; end
        end

        # Workflow or category preferences within a preference set
        module Workflow
          extend Knockapi::Internal::Type::Union

          class UnionMember1 < Knockapi::Internal::Type::BaseModel
            # Channel type preferences
            sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes)) }
            attr_reader :channel_types

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash))
              )
                .void
            end
            attr_writer :channel_types

            sig { returns(T.nilable(T::Array[Knockapi::Models::Condition])) }
            attr_reader :conditions

            sig { params(conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)]).void }
            attr_writer :conditions

            sig do
              params(
                channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
                conditions: T::Array[T.any(Knockapi::Models::Condition, Knockapi::Internal::AnyHash)]
              )
                .returns(T.attached_class)
            end
            def self.new(channel_types: nil, conditions: nil); end

            sig do
              override
                .returns(
                  {
                    channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
                    conditions: T::Array[Knockapi::Models::Condition]
                  }
                )
            end
            def to_hash; end
          end

          sig { override.returns([T::Boolean, Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::UnionMember1]) }
          def self.variants; end
        end
      end
    end
  end
end
