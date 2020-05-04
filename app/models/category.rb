class Category < ApplicationRecord
  has_many :souscategories, dependent: :destroy

end
