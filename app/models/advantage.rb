class Advantage < ApplicationRecord
  belongs_to :character
  validates :advantage, presence: true
  validates :description, presence: true
end
