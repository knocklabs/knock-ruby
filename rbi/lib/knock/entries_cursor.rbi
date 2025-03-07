# typed: strong

module Knock
  class EntriesCursor
    include Knock::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def entries
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def entries=(_)
    end

    sig { returns(PageInfo) }
    def page_info
    end

    sig { params(_: PageInfo).returns(PageInfo) }
    def page_info=(_)
    end

    sig do
      params(
        client: Knock::BaseClient,
        req: Knock::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        page_data: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, page_data:)
    end

    class PageInfo < Knock::BaseModel
      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      sig { params(after: String).void }
      def initialize(after: nil)
      end

      sig { override.returns({after: String}) }
      def to_hash
      end
    end
  end
end
