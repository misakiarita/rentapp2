class RentalBuilding < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :age, presence: true
  validates :address, presence: true

  has_many :closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations, reject_if: :all_blank, allow_destroy: true
  

 end
