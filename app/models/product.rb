class Product < ActiveRecord::Base
  belongs_to :car
  has_many :types

  validates :name ,:presence => true,uniqueness: { case_sensitive: false}
end
