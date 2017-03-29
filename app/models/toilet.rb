class Toilet < ApplicationRecord
  belongs_to :user
  has_one :open_time

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
