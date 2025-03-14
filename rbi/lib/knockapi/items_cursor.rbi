# typed: strong

module Knockapi
  class ItemsCursor
    include Knockapi::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def items
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def items=(_)
    end

    sig { returns(PageInfo) }
    def page_info
    end

    sig { params(_: PageInfo).returns(PageInfo) }
    def page_info=(_)
    end

    class PageInfo < Knockapi::BaseModel
      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      sig { params(after: String).returns(T.attached_class) }
      def self.new(after: nil)
      end

      sig { override.returns({after: String}) }
      def to_hash
      end
    end
  end
end
