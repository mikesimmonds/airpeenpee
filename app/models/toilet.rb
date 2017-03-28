class Toilet < ApplicationRecord
  belongs_to :user
  has_one :open_time
end
