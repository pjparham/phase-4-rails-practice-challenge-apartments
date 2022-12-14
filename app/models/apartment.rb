class Apartment < ApplicationRecord
    has_many :leases
    has_many :tentants, through: :leases

    validates :number, presence: true
end
