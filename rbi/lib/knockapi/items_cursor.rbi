# typed: strong

module Knockapi
  class ItemsCursor
    include Knockapi::Type::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    attr_accessor :items

    sig { returns(PageInfo) }
    attr_accessor :page_info

    sig { returns(String) }
    def inspect
    end

    class PageInfo < Knockapi::BaseModel
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      sig { params(after: String).returns(T.attached_class) }
      def self.new(after: nil)
      end

      sig { override.returns({after: String}) }
      def to_hash
      end
    end
  end
end
