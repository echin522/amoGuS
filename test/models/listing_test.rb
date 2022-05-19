# == Schema Information
#
# Table name: listings
#
#  id              :bigint           not null, primary key
#  title           :string           not null
#  description     :text             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  address         :string           not null
#  lat             :float
#  lng             :float
#  max_guests      :integer          not null
#  num_rooms       :integer          not null
#  num_beds        :integer          not null
#  num_baths       :integer          not null
#  owner_id        :integer          not null
#  price_per_night :integer          not null
#  amenities       :text
#  location        :string           not null
#
require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
