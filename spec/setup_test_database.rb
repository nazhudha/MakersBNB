require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'makers_bnb_test')
  connection.exec("TRUNCATE TABLE users CASCADE;")
end

