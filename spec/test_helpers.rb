def truncate_tables
  connection = PG.connect(dbname: 'makers_bnb_test')
  connection.exec ("TRUNCATE TABLE users, spaces, bookings;")
end