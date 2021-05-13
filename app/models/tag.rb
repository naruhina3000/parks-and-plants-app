class Tag < ApplicationRecord
    has_many :plant_tags
    has_many :plants, through: :plant_tags
    has_many :gardens, through: :plants
end
