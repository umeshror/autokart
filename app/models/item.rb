class Item < ActiveRecord::Base
  belongs_to :type
  #validates :name , :presence => true , :uniqueness => true,uniqueness: { case_sensitive: false}
  #validates :image_url, allow_blank: false, format: {
  #    with: %r{\.(gif|jpg|png)\Z}i,
  #    message: 'must be a URL for GIF, JPG or PNG image.', :presence => true
  #}
  #validates :price, :numericality => {:greater_than_or_equal_to => 0.01}, :presence => true
  #validates :description , :presence => true
  #validates :manufacturer, :presence => true

  has_many :line_items
  before_destroy 'ensure_not_referenced_by_any_line_item' # ensure that there are no line items referencing this product




  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

end
