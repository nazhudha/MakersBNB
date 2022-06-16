require 'pg'
require './lib/database_connection'

class Space
  
  attr_reader :name, :description, :price

  def initialize (name:, description:, price:)
    @name = name
    @description = description
    @price = price
  end

  def self.all
    
    spaces = DatabaseConnection.query("SELECT * FROM spaces")
    spaces.map { |row| row.values_at('name', 'description', 'price_per_night')}
  
  end
end
