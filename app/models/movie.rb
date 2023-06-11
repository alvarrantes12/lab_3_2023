class Movie < ApplicationRecord
    belongs_to :director             
    
    validates :name, presence: true
    validates :year, length: {maximum: 4}, inclusion: { in: 1900..2023 }
end
