require './lib/database_connection'

def setup_test_database
  if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'makers_bnb_test')
  else
    connection = PG.connect(dbname: 'makers_bnb')
  end
end
