class Visit < ApplicationRecord
  belongs_to :toilet_id
  belongs_to :user_id
end
