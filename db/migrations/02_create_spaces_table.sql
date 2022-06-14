CREATE TABLE spaces (
  space_id SERIAL NOT NULL,
  owner_id int,
  PRIMARY KEY (space_id),
  FOREIGN KEY (owner_id) REFERENCES users(id),
  name VARCHAR ( 60 ),
  description VARCHAR ( 500 ),
  price_per_night money);
