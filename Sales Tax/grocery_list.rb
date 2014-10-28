# Create a new class Object for the actual list of grocery items
class Grocery_list
  attr_reader :grocery_items

  # initializing the Global Class Variable for the number of items
  @@item_number = 1000
  # Initializing a grocery item array
  def initialize
    @grocery_item = []
  end

  # this is a method to add an item to the grocery list
  def add_item(item)
    item.item_number = @@item_number
    @@item_number += 1
    @grocery_item << item

    # starting the logic for finding out what type of item it is and if it will be
    # allowed to be taxed. < -- Continue here
    if @grocery_item.item_type == "books"

    end



end