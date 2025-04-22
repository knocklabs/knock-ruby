# typed: strong

module Knockapi
  module Internal
    class MsTeamsPagination
      include Knockapi::Internal::Type::BasePage

      Elem = type_member

      sig { returns(String) }
      attr_accessor :skip_token

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :ms_teams_teams

      # @api private
      sig { returns(String) }
      def inspect; end
    end
  end
end
