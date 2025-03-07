# typed: strong

module Knock
  class PooledNetRequester
    RequestShape = T.type_alias do
      {method: Symbol, url: URI::Generic, headers: T::Hash[String, String], body: T.anything, deadline: Float}
    end

    class << self
      sig { params(url: URI::Generic).returns(Net::HTTP) }
      def connect(url)
      end

      sig { params(conn: Net::HTTP, deadline: Float).void }
      def calibrate_socket_timeout(conn, deadline)
      end

      sig { params(request: Knock::PooledNetRequester::RequestShape).returns(Net::HTTPGenericRequest) }
      def build_request(request)
      end
    end

    sig { params(url: URI::Generic, blk: T.proc.params(arg0: Net::HTTP).void).void }
    private def with_pool(url, &blk)
    end

    sig do
      params(request: Knock::PooledNetRequester::RequestShape)
        .returns([Net::HTTPResponse, T::Enumerable[String]])
    end
    def execute(request)
    end

    sig { void }
    def initialize
    end
  end
end
