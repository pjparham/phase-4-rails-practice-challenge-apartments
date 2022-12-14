class Apartment < ApplicationRecord
    has_many :leases
    has_many :tentants, through: :leases
end
