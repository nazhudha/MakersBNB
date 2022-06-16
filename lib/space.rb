require 'pg'
require './lib/database_connection'

class Space
  # there are no unit tests for this class
#   attr_reader :name, :description, :price

#   def initialize (name:, description:, price:)
#     @name = name
#     @description = description
#     @price = price
#   end

  def self.all
    spaces = DatabaseConnection.query("SELECT * FROM spaces")
    spaces.map { |row| row.values_at('name', 'description', 'price_per_night')}
  end

  def self.add(space_name, description)
     space_name = Space.double_apostrophe(space_name)
     description = Space.double_apostrophe(description)
     @connection.exec ("INSERT INTO spaces (name, description) VALUES ('#{space_name}', '#{description}');")
  end

  def self.show_most_recent_space
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row.values_at('name', 'description')}.last
  end

  def self.names
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row.values_at('name')}
  end

  # method below needed as otherwise the SQL does not process any apostrophes
  def self.double_apostrophe(description)
    chars = description.chars
    new_chars = []
    chars.each do |char|
      char = "''" if char == "'"
      new_chars << char
    end
    new_chars.join
  end

end
