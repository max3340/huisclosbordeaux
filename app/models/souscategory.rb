class Souscategory < ApplicationRecord
  belongs_to :category

  has_many :projects, dependent: :destroy
end
