# frozen_string_literal: true

require 'open-uri'

class UrlValidator
  ALLOWED_EXTENSIONS = %w[jpeg jpg png].freeze

  def call(url)
    URI.open(url).status
    raise(URI::InvalidURIError, 'Invalid image url') unless url.end_with?(*ALLOWED_EXTENSIONS)
  rescue OpenURI::HTTPError,
         Errno::ENOENT,
         URI::InvalidURIError => e
    abort("The program has stopped working. Error: #{e.message}")
  end
end
