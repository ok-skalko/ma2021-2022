# frozen_string_literal: true

require './image_uploader'

class UploadImage
  attr_reader :url

  def initialize
    getting_url
    ImageUploader.call(@url)
    upload
  end

  def getting_url
    print 'Enter image url: '
    @url = gets.chomp
  end

  def upload
    puts 'Enter file name: '
    filename = gets.chomp
    ImageUploader.create_file(filename)
  end
end

UploadImage.new
