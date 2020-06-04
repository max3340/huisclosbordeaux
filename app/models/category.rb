class Category < ApplicationRecord
  has_many :souscategories, dependent: :destroy
  validates :name, presence: true
end
