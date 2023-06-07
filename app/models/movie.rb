class Movie < ApplicationRecord
 belongs_to :director

 validates :first_name, presence: true
 validates :year, presence: true, length: { maximum: 4 }, numericality: { only_integer: true, less_than_or_equal_to: 2023 }
end
