CREATE TABLE bookings (
  booking_id SERIAL NOT NULL,
  space_id int,
  PRIMARY KEY (booking_id),
  FOREIGN KEY (space_id) REFERENCES spaces(space_id),
  renter_id int,
  FOREIGN KEY (renter_id) REFERENCES users(id),
  start_date DATE,
  end_date DATE,
  declined boolean,
  approved boolean );
