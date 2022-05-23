json.extract! listing, 
    :id,
    :title,
    :description,
    :address,
    :lat,
    :lng,
    :location,
    :max_guests,
    :num_rooms,
    :num_beds,
    :num_baths,
    :owner_id,
    :price_per_night,
    :amenities
json.photoUrl url_for(listing.photos[0])

# json.array!(listing.photos) do |photo| 
#     photo
# end