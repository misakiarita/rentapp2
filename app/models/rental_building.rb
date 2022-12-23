class RentalBuilding < ApplicationRecord
  has_many :closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations, allow_destroy: true
  
#   , reject_if: :reject_stations

#   private
#   def reject_stations(attributes)
#     attributes[:closest_stations].blank?
#   end
 end
  