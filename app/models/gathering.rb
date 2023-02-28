class Gathering < ApplicationRecord
    belongs_to :creator,
        class_name: 'User'
    has_many :attendences
    has_many :attendees,
        through: :attendences,
        class_name: 'User'
end
