class Disadvantage < ApplicationRecord
  belongs_to :character
  validates :disadvantage, presence: true
  validates :description, presence: true
end
