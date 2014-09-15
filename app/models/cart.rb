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

  #def total
  #  - sum = 0
  #  - line_items.each {|li| sum += li.total}
  #  - sum
  #end
  def grand_total

    line_items.to_a.sum { |item| item.total_price }
    #line_items.each |line_item|
    #  {
    #      sum +=line_item.total_price
    #
    #  }
    #
    #end

  end
  
end