class Recipe < ApplicationRecord
    include ImageUploader::Attachment.new(:image)
    
    belongs_to :user
    has_many :ingredients
    has_many :directions
    
    accepts_nested_attributes_for :ingredients, 
                                  reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
    accepts_nested_attributes_for :directions, 
                                  reject_if: proc { |attributes| attributes['step'].blank? }, allow_destroy: true

    validates :title, :description, :image, presence: true

end
