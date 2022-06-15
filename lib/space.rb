require 'pg'

class Space
  # there are no unit tests for this class
  attr_reader :name, :description, :price

  def initialize (name:, description:, price:)
    @name = name
    @description = description
    @price = price
  end

  def self.all
    spaces = [{
      name: 'Happy House',
      description: 'A really cosy space, where you can relax', 
      price: '24$/night'},
      {
        name: 'Buckingham Palace',
        description: 'The biggest house in the world',
        price: 'mil$/night'
      }
    ]
    spaces.map { |space|
      Space.new(name: space[:name],
        description: space[:description], 
        price: space[:price])
    }
  end

  def self.add(space_name)
     Space.choose_database
     @connection.exec ("INSERT INTO spaces (name) VALUES ('#{space_name}');")
  end

  def self.show_most_recent_space
    Space.choose_database
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row['name']}.last
  end

  def self.names
    Space.choose_database
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row['name']}
  end

  def self.choose_database
    if ENV['RACK_ENV'] = 'test'
      @connection = PG.connect(dbname: 'makers_bnb_test')
    else
      @connection = PG.connect(dbname: 'makers_bnb')
    end
  end
end
