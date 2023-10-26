class Character < ApplicationRecord
  validates :name, presence: true
  has_many :skills
  has_many :spells
  has_many :advantages
  has_many :disadvantages
end
