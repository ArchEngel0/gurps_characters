class Spell < ApplicationRecord
  belongs_to :character
  validates :spell, presence: true
  validates :spell_class, presence: true
  validates :description, presence: true
  validates :difficulty, presence: true
  validates :spell_college, presence: true
end
