# frozen_string_literal: true

require './url_validator'
require 'faraday'
require './faraday_request_wrapper'

class ImageUploader
  class << self
    def call(url)
      @url = url
      validate
    end

    def create_file(filename)
      FaradayRequestWrapper.call do
        @response = Faraday.get(@url)
        filename.empty? ? filename = @url.split('/')[-1] : filename = "#{filename}.#{@url.split('.')[-1]}"
        File.open("./my_images/#{filename}", 'w+') do |file|
          file.write(@response.body)
        end
      end
    end

    def validate
      UrlValidator.new.call(@url)
    end
  end
end
