require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'makers_bnb_test')
  connection.exec("TRUNCATE TABLE users CASCADE;")
end



# To remove data from a table and other tables that have foreign key reference the table, you use CASCADE option in the TRUNCATE TABLE statement as follows :

# ```
# TRUNCATE TABLE table_name 
# CASCADE;
# ````
