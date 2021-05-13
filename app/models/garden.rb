class Garden < ApplicationRecord
    has_many :plants, dependent: :destroy

    has_many :tags, through: :plants
end
