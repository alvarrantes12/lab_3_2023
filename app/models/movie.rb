class Movie < ApplicationRecord
  belongs_to :director
  validates :name, presence: true
  validates :year, presence: true, numericality: { less_than_or_equal_to: 2023, only_integer: true }, length: { maximum: 4 }
end
