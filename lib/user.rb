require './lib/database_connection'
require 'pg'

class User

  def self.create(name, username, email, password)
    DatabaseConnection.query("INSERT INTO users (name, username, email, password) VALUES ('#{name}', '#{username}', '#{email}', '#{password}');")
  end

  def self.details
    users = DatabaseConnection.query("SELECT * FROM users;")
    users.map {|user| user.values_at('name', 'username')}.last
  end
end


# WE ARE WORKING ON SIGN UP
