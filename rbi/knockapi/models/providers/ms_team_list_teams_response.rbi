# typed: strong

module Knockapi
  module Models
    module Providers
      class MsTeamListTeamsResponse < Knockapi::Internal::Type::BaseModel
        # Microsoft Teams team ID.
        sig { returns(String) }
        attr_accessor :id

        # Microsoft Teams team display name.
        sig { returns(String) }
        attr_accessor :display_name

        # Microsoft Teams team description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(id: String, display_name: String, description: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(
          # Microsoft Teams team ID.
          id:,
          # Microsoft Teams team display name.
          display_name:,
          # Microsoft Teams team description.
          description: nil
        ); end
        sig { override.returns({id: String, display_name: String, description: T.nilable(String)}) }
        def to_hash; end
      end
    end
  end
end
