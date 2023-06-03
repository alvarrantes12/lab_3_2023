class Director < ApplicationRecord
    has_many :directors

    validates :first_name, presence: true
    validates :last_name, presence: true
end
