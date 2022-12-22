class Planet < ApplicationRecord
  has_many :aliens
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
end
