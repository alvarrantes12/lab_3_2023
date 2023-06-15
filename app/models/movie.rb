class Movie < ApplicationRecord

    validates :movie_name, presence: true
    validates :movie_year, presence: true, length: {maximum: 4} ,numericality: { only_integer: true, less_than_or_equal_to: 2023 }

    belongs_to :director
end