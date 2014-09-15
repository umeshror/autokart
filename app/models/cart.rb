class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy



  def add_item(item_id)

    current_line_item = line_items.find_by(:item_id => item_id)

    if current_line_item
      current_line_item.quantity += 1
    else
      current_line_item = line_items.new(:item_id => item_id)
    end

    return current_line_item

  end
  
end