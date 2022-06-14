# Group Collabrators 
* Naz
* Kay
* Aisha
* Amir
* Ben

# Headline specifications

* Any signed-up user can list a new space.
* Users can list multiple spaces.
* Users should be able to name their space, provide a short description of the space, and a price per night.
* Users should be able to offer a range of dates where their space is available.
* Any signed-up user can request to hire any space for one night, and this should be approved by the user     that owns that space.
* Nights for which a space has already been booked should not be available for users to book that space.
* Until a user has confirmed a booking request, that space can still be booked for that night.


## ITERATIONS

Iteration 1: MPV - Spaces and dates are hardcoded

### USER STORIES

* [MVP3]
`As a renter\ So that I can choose a place to stay\ I need to see available spaces with a name, description and price.`

TDD steps: 

- view_index_spec.rb in /features (connection test) [rspec] => PASSED

- return a space (description, name, price) [HARDCODED: single space, with fixed dates] to the index.erb file [capybara] => PASSED

-  Adapt the views and controller to take the data from the model and present them to the views in html, via controller. [capybara] => PASSED

- MVC refactor: move the list of spaces (be it one or more) away from the views and controller, and into the model (step 1) => PASSED
  and then database (step 2).[rspec] => PENDING

#### DATABASE SETUP

