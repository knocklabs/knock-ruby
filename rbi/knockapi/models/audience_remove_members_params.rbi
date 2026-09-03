# typed: strong

module Knockapi
  module Models
    class AudienceRemoveMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::AudienceRemoveMembersParams,
            Knockapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :key

      # A list of audience members to remove. You can remove up to 1,000 members per
      # request.
      sig { returns(T::Array[Knockapi::AudienceMemberRequest]) }
      attr_accessor :members

      sig do
        params(
          key: String,
          members: T::Array[Knockapi::AudienceMemberRequest::OrHash],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        key:,
        # A list of audience members to remove. You can remove up to 1,000 members per
        # request.
        members:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            members: T::Array[Knockapi::AudienceMemberRequest],
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
