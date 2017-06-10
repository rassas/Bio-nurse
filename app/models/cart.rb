class Cart < ApplicationRecord
  has_many :datums
  has_many :temperature_levels, through: :datums
  has_many :heart_beats, through: :datums
end
