class Director < ApplicationRecord

  has_many :movies
  validates :first_name, :last_name, presence: true
end

