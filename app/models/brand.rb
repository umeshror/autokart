class Brand < ActiveRecord::Base

  has_many :cars
  validates :name , :presence => true,uniqueness: { case_sensitive: false}
  validates :name, :uniqueness => true
end
