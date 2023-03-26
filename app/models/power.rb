class Power < ApplicationRecord
  has_many :heroes, through: :hero_power

  validates :description, presence: true, length: { minimum: 20 }

end
