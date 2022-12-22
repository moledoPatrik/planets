class Planet < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
