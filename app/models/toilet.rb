class Toilet < ApplicationRecord
  belongs_to :user
  has_one :open_time

  geocoded_by :location_address
  after_validation :geocode, if: :location_address_changed?
end
