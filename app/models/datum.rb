class Datum < ApplicationRecord
  has_one :temperature_level, foreign_key: "data_id"
  has_one :heart_beat, foreign_key: "data_id"

  belongs_to :cart
end
