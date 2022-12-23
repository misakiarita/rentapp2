class RentalBuilding < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :age, presence: true
  validates :address, presence: true

  has_many :closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations, reject_if: :reject_stations, allow_destroy: true
  
  def reject_stations(attributed)
    attributes['line'].blank?
  end
 end
