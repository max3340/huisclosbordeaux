class Project < ApplicationRecord
  belongs_to :souscategory
  validates :name, :description, :youtube, :site, presence: true
end
