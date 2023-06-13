class Movie < ApplicationRecord
    belongs_to :director
    validates :name, presence: true
    validates :year_release_date, presence: true, length: { maximum: 4 }, inclusion: { in: 1..2023 }
end