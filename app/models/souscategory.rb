class Souscategory < ApplicationRecord
  belongs_to :category
  has_many :projects, dependent: :destroy

  has_one_attached :cover_photo
end
