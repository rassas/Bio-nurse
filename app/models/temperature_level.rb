class TemperatureLevel < ApplicationRecord
  belongs_to :datum, foreign_key: "data_id"
end
