class Skill < ApplicationRecord
  belongs_to :character
  validates :skill, presence: true
  validates :description, presence: true
  validates :difficulty, presence: true
end
