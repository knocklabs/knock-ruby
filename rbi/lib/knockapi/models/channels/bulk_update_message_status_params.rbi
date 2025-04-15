# typed: strong

module Knockapi
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        sig do
          params(request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(request_options: {}); end

        sig { override.returns({request_options: Knockapi::RequestOptions}) }
        def to_hash; end

        module Action
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol) }

          SEEN = T.let(:seen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          UNSEEN = T.let(:unseen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          READ = T.let(:read, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          UNREAD = T.let(:unread, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          ARCHIVED =
            T.let(:archived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          UNARCHIVED =
            T.let(:unarchived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          INTERACTED =
            T.let(:interacted, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          ARCHIVE =
            T.let(:archive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          UNARCHIVE =
            T.let(:unarchive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)
          DELETE = T.let(:delete, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol)

          sig do
            override.returns(T::Array[Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol])
          end
          def self.values; end
        end
      end
    end
  end
end
