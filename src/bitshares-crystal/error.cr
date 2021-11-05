module BitShares
  class BaseError < ::Exception
  end

  class ResponseError < BaseError
    getter error : JSON::Any

    def initialize(err)
      super()
      @error = err
    end

    def inspect(io : IO) : Nil
      @error.inspect(io)
    end

    def to_s(io : IO) : Nil
      @error.to_s(io)
    end
  end

  class TimeoutError < BaseError
  end

  class SocketClosed < BaseError
  end
end