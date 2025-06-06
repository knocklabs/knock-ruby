# typed: strong

module Knockapi
  module Internal
    class EntriesCursor
      include Knockapi::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :entries

      sig { returns(PageInfo) }
      attr_accessor :page_info

      # @api private
      sig { returns(String) }
      def inspect
      end

      class PageInfo < Knockapi::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(PageInfo, Knockapi::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { params(after: String).returns(T.attached_class) }
        def self.new(after: nil)
        end

        sig { override.returns({ after: String }) }
        def to_hash
        end
      end
    end
  end
end
