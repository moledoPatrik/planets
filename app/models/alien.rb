class Alien < ApplicationRecord
  belongs_to :planet
  has_one_attached :photo
  validates :name, presence: true
  validates :age, presence: true

  def increment_age!
    self.age += 1
  end

  def self.oldest
    aliens = Alien.all.sort_by { |alien| alien.age }
    aliens.reverse
  end
end
