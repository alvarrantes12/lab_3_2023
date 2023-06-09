class Movie < ApplicationRecord

    belongs_to :director

    validates :name, presence: true
    validates :year, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 2023 }, length: { maximum: 4 }

end
