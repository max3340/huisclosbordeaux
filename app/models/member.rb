class Member < ApplicationRecord
  has_one_attached :cover_photo
  validates :first_name, :last_name, :role, :cover_photo, presence: true
end
