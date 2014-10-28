class SalesReceipt
  # requiring the grocery_items.rb file
  require_relative './grocery_item.rb'
  require_relative './grocery_list.rb'

  # These are attributes you want to read outside of the class
  attr_accessor :customer_name, :grocery_item
  def initialize(customer_name)
    @customer_name = customer_name
    @grocery_list = Grocery_list.new
  end

  # ask the customer how mang
  def main_menu
      puts "Hello #{customer_name},"
      puts "Welcome to the SuperMarket"
      puts "Are you ready to check out (y/n)? "
      ready = gets.chomp
    if ready == "y"
      item_information
    else
      puts "Okay, come back when you're ready to proceed"
    end

  end

  # getting user input for the item
  def item_information
    puts"What is the item you are putting in?"
    item_name = gets.chomp
    puts "How many of this item do you have?"
    item_quantity = gets.chomp
    puts "What is the price of the item?"
    item_price

    # creating a new Grocery_item.Object with (item_name, item_quantity, item_price)
    item = Grocery_item.new(item_name, item_quantity, item_price, item_type)
    @grocery_list = add_item.(item)
    # when done ask, if another item is to be added
    puts "Do you want to add another item (y/n)?"
    proceed = gets.chomp
    if proceed == "y"
      item_information
    elsif == "n"
      totaled_list
    else
      put "This is not a valid selection, please try again"
    end
  end

  # totalling up the items
  def totaled_list

  end
end

yung = SalesReceipt.new("Yung")
yung.main_menu
