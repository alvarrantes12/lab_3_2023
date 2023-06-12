class Movie < ApplicationRecord
    belongs_to :director
    validates :movie_name, presence: true
    validates :year, presence: true, numericality: { only_integer: true }, format: { with: /\A\d{4}\z/}, inclusion: { in: 1895..2023}
end
