require './lib/database_connection'
require 'pg'

def setup_test_database
  if ENV['ENVIRONMENT'] == 'test'
    p "Setting up a test database..."
    connection = PG.connect(dbname: 'makers_bnb_test')
    connection.exec("TRUNCATE TABLE users, spaces, bookings;")
  else
    connection = PG.connect(dbname: 'makers_bnb')
  end
end
