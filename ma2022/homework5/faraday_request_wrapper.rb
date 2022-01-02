# frozen_string_literal: true

require 'faraday'

class FaradayRequestWrapper
  class << self
    def call
      attempt = 0
      begin
        yield
      rescue Faraday::BadRequestError,
             Faraday::UnauthorizedError,
             Faraday::ResourceNotFound,
             Faraday::ServerError,
             Faraday::ConnectionFailed => e
        if attempt < 3
          puts 'Trying reach url'
          attempt += 1
          sleep 2
          retry
        else
          puts e.message
        end
      end
    end
  end
end
