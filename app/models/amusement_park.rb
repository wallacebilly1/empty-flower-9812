class AmusementPark < ApplicationRecord
  has_many :rides
  has_many :ride_mechanics, through: :rides
  has_many :mechanics, through: :ride_mechanics

  def mechanics_on_rides
    mechanics.distinct
  end
end