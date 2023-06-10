class Director < ApplicationRecord
    has_many :movie 

    validates :first_name, presence: true
    validates :last_name, presence: true

end
