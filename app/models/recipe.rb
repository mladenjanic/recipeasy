class Recipe < ApplicationRecord
    include ImageUploader::Attachment.new(:image)
end
