require 'pg'

class Space
  
  attr_reader :name, :description, :price

  def initialize (name:, description:, price:)
    @name = name
    @description = description
    @price = price
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      puts "We are in the test environment in Space.all"
      connection = PG.connect(dbname: 'makers_bnb_test')
      connection.exec("INSERT INTO spaces(name, description, price_per_night) VALUES ('Happy House', 'A really cosy space, where you can relax', '$24.00');")
      connection.exec("INSERT INTO spaces(name, description, price_per_night) VALUES ('Buckingham Palace', 'The biggest house in the world', '$100.00');")
      spaces = connection.exec("SELECT * FROM spaces;")
  
      ret_arr = []
      spaces.map { |space|
        sp = Space.new(name: space['name'], 
          description: space['description'], 
          price: space['price_per_night'])
          puts "name is #{sp.name}"
          puts "description is #{sp.description}"
          puts "price is #{(sp.price)}"
          ret_arr << "#{sp.name}, #{sp.description}, #{sp.price}"
      }
      return ret_arr
      
    else
      connection = PG.connect(dbname: 'makers_bnb')

    end
  end
end

# spaces = [{
  #   name: 'Happy House',
  #   description: 'A really cosy space, where you can relax', 
  #   price_per_night: '$24.00'},
  #   {
  #     name: 'Buckingham Palace',
  #     description: 'The biggest house in the world',
  #     price_per_night: '$100.00'
  #   }
  # ]

#   =begin
#     spaces.map { |space|
#       Space.new(name: space[:name], 
#         description: space[:description], 
#         price: space[:price_per_night])
#     }
#   end
# =end