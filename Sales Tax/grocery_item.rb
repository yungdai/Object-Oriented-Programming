# Create a new class Object for the grocery items
class Grocery_item
  attr_accessor :item_name, :item_quantity, :item_price, :item_type, :item_taxes, :item_number

  def initialize(item_name, item_quantity, item_price, item_type, item_taxes)
    @item_name = item_name
    @item_quantity = item_quantity
    @item_price = item_price
    @item_type = item_type
    @item_taxes = item_taxes
  end

end