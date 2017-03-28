class User < ApplicationRecord
  belongs_to :account
  validates :gender, presence: true, on: :update
end
