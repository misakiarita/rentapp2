class RentalBuilding < ApplicationRecord
  has_many :closest_stations
  accepts_nested_attributes_for :closest_stations
end

# , reject_if: :reject_station
# def reject_atation(attributes)
#   attributes.except(:デフォルト値が設定されているカラム名).values.all?(&:blank?)
# end