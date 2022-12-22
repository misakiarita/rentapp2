class RentalBuilding < ApplicationRecord
  has_many :closest_stations
  accepts_nested_attributes_for :closest_stations
end

