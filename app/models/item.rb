class Item < ActiveRecord::Base
  belongs_to :type
  validates :name , :presence => true , :uniqueness => true,uniqueness: { case_sensitive: false}
  validates :image_url, allow_blank: false, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.', :presence => true
  }
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}, :presence => true
  validates :description , :presence => true
  validates :manufacturer, :presence => true

end
