class SalesReceipt
  # These are attributes you want to read outside of the class
  attr_accessor :item_amount, :item, :item_price, :total_items, :customer_name
  def initialize(customer_name)
    @customer_name = customer_name
    @item_amount = item_amount.to_i
    @item = item.to_s
    @item_price = item_price.to_f
    @total_items = total_items
  end

  # ask the customer how mang
  def intialization_greeting
    puts "Hi #{customer_name}.  How many items do you have in your shopping basket?"
    @total_items = gets.chomp
  end

  # go through each item and enter the properties for each item
  def item_properties
    @total_items.each do |item_amount, item, item_price|
      puts "What is the name of the item?"
      item = gets.chomp
      puts "How many of this item do you have?"
      item_amount = gets.chomp
      puts "What is the price of the time?"
      item_price = gets.chomp
    end

  end
end

yung = SalesReceipt.new("Yung")
yung.intialization_greeting
yung.item_properties