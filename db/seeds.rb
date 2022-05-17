require 'faker'

# Reset the database
User.destroy_all
Listing.destroy_all
Reservation.destroy_all
Review.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('listings')
ApplicationRecord.connection.reset_pk_sequence!('reservations')
ApplicationRecord.connection.reset_pk_sequence!('reviews')

# Plant our seeds
demo_user = User.create!(
    fname: "Demo",
    lname: "User",
    email: "demo@email.com",
    password: "asdf1234",
    about: "Testing123!"
    location: "San Francisco"
)

num_users = 50
num_listings = 30
num_reviews = 100
num_reservations = 20

# Create a bunch of random users
num_users.times do
    rand_user = User.create! ({
        fname: Faker::Name.unique.first_name,
        lname: Faker::Name.unique.last_name,
        email: Faker::Internet.unique.email,
        password: "password",
        about: Faker::TvShows::SouthPark.quote
    })
end

# Create random listings
test_listing = Listing.create!(
    title: "Big house",
    description: "extremely big house",
    max_guests: 10,
    price_per_night: 420,
    lat: 37.804, lng: -122.419651,
    address: "55 9th Street",
    owner_id: 1
)

# Large homes

# Medium homes

# Small homes