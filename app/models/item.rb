class Item < ActiveRecord::Base
  belongs_to :type
  validates :name , :presence => true , :uniqueness => true

end
