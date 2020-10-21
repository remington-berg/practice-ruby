item1 = { :name => "Fresh Mountain Air", :color => "clear", :price => 20, :origins => "Rocky Mountain National Park", :description => "This air is thin and cold!" }
item2 = { :name => "L.A. Air", :color => "hazy yellow", :price => 1, :origins => "Los Angelos", :description => "For those who don't really like their lungs!" }
item3 = { name: "Galapogus Air", color: "clear with hints misty green", price: 10000, origins: "The Galapogus Islands", description: "Guarenteed to contain a turtle sneeze!" }

puts "#{item1[:name]} comes in #{item1[:color]} and will cost you #{item1[:price]}.  This air comes from #{item1[:origins]} and #{item1[:description]}"

puts "#{item2[:name]} comes in #{item2[:color]} and will cost you #{item2[:price]}.  This air comes from #{item2[:origins]} and #{item2[:description]}"

puts "#{item3[:name]} comes in #{item3[:color]} and will cost you #{item3[:price]}.  This air comes from #{item3[:origins]} and #{item3[:description]}"

class Item
  attr_reader :name, :color, :origins, :description
  attr_writer :price

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @origins = input_options[:origins]
    @description = input_options[:description]
  end

  def inflation
    @price = 10 * @price
  end
end

item1 = Item.new({ name: "Fresh Mountain Air", color: "clear", price: 20, origins: "Rocky Mountain National Park", description: "This air is thin and cold!" })

item2 = Item.new({ name: "L.A. Air", color: "hazy yellow", price: 1, origins: "Los Angelos", description: "For those who don't really like their lungs!" })

item3 = Item.new({ name: "Galapogus Air", color: "clear with hints misty green", price: 10000, origins: "The Galapogus Islands", description: "Guarenteed to contain a turtle sneeze!" })

puts item1.name
puts item1.inflation
puts item1.origins
puts item1.description

puts item2.name
puts item2.origins
puts item2.description

puts item3.name
puts item3.origins
puts item3.description
