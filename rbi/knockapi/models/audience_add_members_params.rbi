# typed: strong

module Knockapi
  module Models
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::AudienceAddMembersParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :key

      # A list of audience members to add. You can add up to 1,000 members per request.
      sig { returns(T::Array[Knockapi::AudienceMemberRequest]) }
      attr_accessor :members

      # Create the audience if it does not exist.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :create_audience

      sig { params(create_audience: T::Boolean).void }
      attr_writer :create_audience

      sig do
        params(
          key: String,
          members: T::Array[Knockapi::AudienceMemberRequest::OrHash],
          create_audience: T::Boolean,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        key:,
        # A list of audience members to add. You can add up to 1,000 members per request.
        members:,
        # Create the audience if it does not exist.
        create_audience: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            members: T::Array[Knockapi::AudienceMemberRequest],
            create_audience: T::Boolean,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
