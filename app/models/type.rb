class Type < ActiveRecord::Base
  belongs_to :product
  has_many :items
  #validates :name , :presence => true ,uniqueness: { case_sensitive: false}
  #

end
