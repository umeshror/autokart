class Car < ActiveRecord::Base
  belongs_to :brand

  has_many :products
  #validates :name ,:presence => true,uniqueness: { case_sensitive: false}
end
