class Movie < ApplicationRecord
    belongs_to :director

    validates :name, presence: true
    validates :year_publication, presence: true, numericality: {less_than_or_equal_to: 2023}
end
