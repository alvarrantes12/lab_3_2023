class Movie < ApplicationRecord
    belongs_to :director

    validates :name,presence: true
    validates :year,presence: true,numericality: { greater_than: 0 ,less_than: 2024 }
end
