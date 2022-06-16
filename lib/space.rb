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
    Space.choose_database
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row.values_at('name', 'description')}
  end

  def self.add(space_name, description)
     Space.choose_database
     description = Space.double_apostrophe(description)
     @connection.exec ("INSERT INTO spaces (name, description) VALUES ('#{space_name}', '#{description}');")
  end

  def self.show_most_recent_space
    Space.choose_database
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row.values_at('name', 'description')}.last
  end

  def self.names
    Space.choose_database
    table = @connection.exec ("SELECT * FROM spaces;")
    table.map {|row| row.values_at('name')}
  end

  def self.choose_database
    if ENV['RACK_ENV'] = 'test'
      @connection = PG.connect(dbname: 'makers_bnb_test')
    else
      @connection = PG.connect(dbname: 'makers_bnb')
    end
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
